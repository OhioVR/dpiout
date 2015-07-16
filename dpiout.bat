ECHO OFF
SET "filename=%1"
IF "%2" == "" (
	SET scaleLevel=2
) ELSE (
	SET scaleLevel=%2
)
ECHO %scaleLevel%
SET "xxxhdpi=drawable-xxxhdpi"
SET "xxhdpi=drawable-xxhdpi"
SET "xhdpi=drawable-xhdpi"
SET "hdpi=drawable-hdpi"
SET "mdpi=drawable-mdpi"
SET "ldpi=drawable-ldpi"
SET "xxxhdpiout=%xxxhdpi%/%filename%"
SET "xxhdpiout=%xxhdpi%/%filename%"
SET "xhdpiout=%xhdpi%/%filename%"
SET "hdpiout=%hdpi%/%filename%"
SET "mdpiout=%mdpi%/%filename%"
SET "ldpiout=%ldpi%/%filename%"
IF NOT EXIST %xxxhdpi% MKDIR %xxxhdpi%
IF NOT EXIST %xxhdpi% MKDIR %xxhdpi%
IF NOT EXIST %xhdpi% MKDIR %xhdpi%
IF NOT EXIST %hdpi% MKDIR %hdpi%
IF NOT EXIST %mdpi% MKDIR %mdpi%
IF NOT EXIST %ldpi% MKDIR %ldpi%
SET /A xxxhdpiScaleFactor=%scaleLevel%*100
SET /A xxhdpiScaleFactor=%scaleLevel%*75
SET /A xhdpiScaleFactor=%scaleLevel%*50
SET /A hdpiScaleFactor=%scaleLevel%*38
SET /A mdpiScaleFactor=%scaleLevel%*25
SET /A ldpiScaleFactor=%scaleLevel%*19
convert %filename% -resize %xxxhdpiScaleFactor%%% %xxxhdpiout%
convert %filename% -resize %xxhdpiScaleFactor%%% %xxhdpiout%
convert %filename% -resize %xhdpiScaleFactor%%% %xhdpiout%
convert %filename% -resize %hdpiScaleFactor%%% %hdpiout%
convert %filename% -resize %mdpiScaleFactor%%% %mdpiout%
convert %filename% -resize %ldpiScaleFactor%%% %ldpiout%
