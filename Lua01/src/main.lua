--print("hello lua")

--table
Config = {hello = "hello world"};
Config.words = "hello"
Config.num = 100;
Config["name"] = "zhang san"

--print(Config["words"])
--print(Config.name)
--print(Config.hello)
--
--for key, var in pairs(Config) do
--	print(key,var)
--end


--array

--arr = {1,2,3,4,"teststr",5,6}
--
--table.maxn(arr)

--for key, var in pairs(arr) do
--	print(key,var)
--end

arr = {};
for var=1, 100 do
  table.insert(arr,1,var)
	
end

for key, var in pairs(arr) do
  print(key,var)
end

