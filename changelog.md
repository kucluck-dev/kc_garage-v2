# v1.0.1 (06-05-2024)
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