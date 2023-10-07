modGuid = "b8dcfc1b-d099-4a29-b8f2-f0150b652127"
subClassGuid = "d3fa1ed9-353e-45ab-af10-88ee57cec86c"

if Ext.Mod.IsModLoaded("67fbbd53-7c7d-4cfa-9409-6d737b4d92a9") then
  local subClasses = {
    AuthorSubclass = {
      modGuid = modGuid,
      subClassGuid = subClassGuid,
      class = "rogue",
      subClassName = "Pirate"
    }
  }

  local function OnSessionLoaded()
    Mods.SubclassCompatibilityFramework.Api.InsertSubClasses(subClasses)
  end

  Ext.Events.SessionLoaded:Subscribe(OnSessionLoaded)
end