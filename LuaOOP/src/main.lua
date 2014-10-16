--lua oo by cloudwu
local _class={}

function class(super)
  local class_type={}
  class_type.ctor=false
  class_type.super=super
  class_type.new=function(...)
    local obj={}
    do
      local create
      create = function(c,...)
        if c.super then
          create(c.super,...)
        end
        if c.ctor then
          c.ctor(obj,...)
        end
      end

      create(class_type,...)
    end
    setmetatable(obj,{ __index=_class[class_type] })
    return obj
  end
  local vtbl={}
  _class[class_type]=vtbl

  setmetatable(class_type,{__newindex=
    function(t,k,v)
      vtbl[k]=v
    end
  })

  if super then
    setmetatable(vtbl,{__index=
      function(t,k)
        local ret=_class[super][k]
        vtbl[k]=ret
        return ret
      end
    })
  end

  return class_type
end


BaseType = class()

function BaseType:ctor(temp)
  print("ctor in baseType:",temp)
  self.x = temp
end

function BaseType:print_x()
  print("print_x in baseType:"..self.x)
end

--local b = BaseType:new(2) -- error
--local b = BaseType.new(2) -- right
--b.print_x()   -- error
--b:print_x()    -- right


Man = class(BaseType)

--override print_x
function Man:print_x()
  print("this is man print x")
end


function Man:do_something()
  print("you can do something in the here")
end
local m = Man.new(55)
m:print_x()
m:do_something()
