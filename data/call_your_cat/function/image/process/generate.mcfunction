#> call_your_cat:image/process/generate
#
# This function generates the image data.

data modify storage call_your_cat:image data.current.image_data set from storage call_your_cat:image data.image_data
data modify storage call_your_cat:image data.current.description set from storage call_your_cat:image data.description
data modify storage call_your_cat:image data.current.pixel_character set from storage call_your_cat:image data.pixel_character.pixel

# Reset index score
scoreboard players set $index.image_data call_your_cat.image 0
# Set width
execute store result score $width call_your_cat.image run data get storage call_your_cat:image data.width
# Set height
execute store result score $height call_your_cat.image run data get storage call_your_cat:image data.height
# Set length
scoreboard players operation $length call_your_cat.image = $width call_your_cat.image
scoreboard players operation $length call_your_cat.image *= $height call_your_cat.image
# Clear remaining entries in tellraw
data remove storage call_your_cat:image data.tellraw

# Add spacing on top
function call_your_cat:image/process/append/line_break
# Loop over image data
function call_your_cat:image/process/loop_over_image_data
# Add spacing on bottom
function call_your_cat:image/process/append/line_break