require('System\\ScriptCore')
require('System\\ProtocolCore')
require('Scripts\\WelcomeMessage')
require('Scripts\\NpcTalk')
require('Utils\\Database')
require('Utils\\DatabaseAsync')
require('Utils\\Cron')
require('Utils\\Functions')
require('Utils\\Schedule')


requirefolder('Scripts\\TesteProtocol')
requirefolder('Scripts\\AutoPost')

DataBase.Connect(3, "MuOnlineS6", "", "")