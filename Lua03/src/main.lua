

function People( name)
	local self  = {};
	function init()
		self.name = name
	end
	
	self.sayHello = function (self)
	 print("people say hello : ".. self.name)
	end
	
	init()
	return self
end

--local p = People("zhang san")
--p:sayHello()

function Man(name)
  local self = {}
  self = People(name)
  self.sayHi = function (seld)
    print("man say hi : ".. self.name)
  end
	return self
end

local m = Man("li si")
m:sayHello()
m:sayHi()