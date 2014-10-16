--oop

People = {}

--function People.sayHello(parameters)
--  print("People say hi")
--end

People.sayHello = function(self)
  print("People say hello:"..self.name)
end


function clone(tab)
	local ins = {};
	for key, var in pairs(People) do
		ins[key] = var
	end
	return ins
end


People.new = function (name)
  local self = clone(People)
  self.name = name
	return self
end

local p = People.new("zhang san")
--p.sayHello(p)
p:sayHello();


--//ผฬณะ


