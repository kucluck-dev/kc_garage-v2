# v1.0.1 (05-06-2024)

- Fixed fuel not apply to vehicles.
- Fixed request vehicle keys.
- Fixed callback not registed.
- Fixed not checking owned vehicles.
- Fixed the word on locales id.
- Added missing locales code.
- Added custom fuel resouces.
- Remove unused codes.
- Changing command 'parking' to 'garages'
- Changing the favorite label tooltip.

## Changed files

### Refactor:

- refactor:(client/function.lua) correcting function
- refactor:(client/main.lua) command give keys

### Feat:

- feat:(shared/config.lua) custom fuel resouces
- feat:(client/main.lua) close UI after tp player
- feat:(client/main.lua) remove unused codes
- feat:(client/mainAPI.lua) setup fuel function
- feat:(server/main.lua) vehicleCache
- feat:(server/main.lua) command give keys
- feat:(locales/en.lua) new locales code
- feat:(locales/id.lua) missing locales

### Fix:

- fix:(client/main.lua) fuel not apply
- fix:(server/main.lua) request vehicle keys
- fix:(server/main.lua) not checking owned vehicles
- fix:(locales/id.lua) correcting language
- fix:(web/script.js) favorit label not replaceable
- fix:(web/script.js) ui vehicle info stacked
- fix:(bridge/esx/client.lua) typos
- fix:(bridge/qb/client.lua) typos

# v1.0.2 (07-06-2024)

- Replacing the jobs impound system.<br>
  **You need to add a new column in the database**
  - ESX: `` ALTER TABLE `owned_vehicles` ADD COLUMN `impounded` LONGTEXT NULL; ``
  - QB: `` ALTER TABLE `player_vehicles` ADD COLUMN `impounded` LONGTEXT NULL;``
- Fixed ui button stacked
- Fixed other players can lock the vehicle

## Changed files

### Refactor:

- refactor:(client/function.lua) JobsImpound

### Feat:

- feat:(bridge/esx/server.lua) function GetIcName
- feat:(bridge/qb/server.lua) function GetIcName
- feat:(client/function.lua) supporting JobsImpound
- feat:(server/main.lua) supporting JobsImpound
- feat:(shared/config.lua) supporting JobsImpound
- feat:(web/index.html) supporting JobsImpound
- feat:(web/style.css) supporting JobsImpound
- feat:(web/sctipt.js) supporting JobsImpound
- feat:(locales/en.js) supporting JobsImpound
- feat:(locales/id.js) supporting JobsImpound

### Fix:

- fix:(web/script.js) ui button stacked

# v1.0.3 (08-06-2024)

- Fixed Target qb-core
- Fixed Toggle qb-core
- Fixed qb-core GetIcName

## Changed files

### Refactor:

- refactor:(client/main.lua) SetupTarget

### Feat:

- feat:(client/mainAPI.lua) target options

### Fix:

- fix:(bridge/qb/server.lua) function GetIcName
- fix:(server/main.lua) Get vehicles in jobs impound
- fix:(client/function.lua) function Parking & JobsImpound

# v1.0.4 (26-06-2024)

- Replacing core callbacks using `lib.callback`
- Replacing core keybind using `lib.addKeybind`
- Split some functions into new files
- Change the Core variable to Framework
- Add description in some commands
- Fix Callback QB-Core

### Refactor:

- refactor:(server/main.lua) function CustomSQL
- refactor:(server/main.lua) function GetVehicleParkingFromPlate

### Fix:

- fix:(client/main.lua) TriggerCallback
- fix:(server/main.lua) RegisterCallback

### Feat:

- feat:(shared/framework.lua) framework loaded
- feat:(shared/functions.lua) shared functions
- feat:(server/mainAPI.lua) customs server API

# v1.0.5 (30-07-2024)

- Fix Framework not loaded
- Fix Player IC Name
- Fix qb-target job
- Fix Premium Garage always on target
- Add Missing locale

File Change :

- `bridge/esx/client.lua`
- `bridge/qb/client.lua`
- `server/main.lua`
- `client/main.lua`
- `client/function.lua`
- `client/mainAPI.lua`
- `locales/id.lua`
- `locales/en.lua`

# v1.0.6 (07-08-2024)

- Fix issue Delay after spawn vehicles
- Fix nil value vehiclesCache
- Feat Auto close UI when not vehicles data
- Add formatting code
- open escrow `/bridge/**/*.lua`

File Change :

- `bridge/esx/client.lua`
- `bridge/qb/client.lua`
- `bridge/esx/server.lua`
- `bridge/qb/server.lua`
- `client/main.lua`
- `client/deformation.lua`
- `client/function.lua`
- `client/mainAPI.lua`
- `server/main.lua`
- `server/mainAPI.lua`
- `server/update.lua`
- `shared/functions.lua`
