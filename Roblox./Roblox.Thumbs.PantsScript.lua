local comment = 'Pants thumbnail'
asseturl, ext, h, v, url = ...
pcall(function() game:GetService('ContentProvider'):SetBaseUrl(url) end) 
game:GetService('ScriptContext').ScriptsDisabled = true
local guy = game:GetObjects('http://www.roblox.com/asset/?id={0}&accesskey={1}')[1]
guy.Parent = workspace
c = Instance.new('Pants')
c.PantsTemplate = game:GetObjects(asseturl)[1].PantsTemplate
c.Parent = guy
t = game:GetService('ThumbnailGenerator')
game:GetService('ThumbnailGenerator').GraphicsMode = 4
return t:Click(ext, h, v, true)