#  03-data_transformation.R
#  Version 0.0.1
#  Copyright 2017 Nick Hepler <nick@nickhepler.com>
#
#  This program is free software; you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation; either version 2 of the License, or
#  (at your option) any later version.
#
#  This program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with this program; if not, write to the Free Software
#  Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
#  MA 02110-1301, USA.
#

#  Create transform data in global enviroment and remove unneeded variables.
transform <- select(raw, 
  -fed..region, -map.link, -(family.name:family.description))

#  Create a factor variable for atlas time period (1 or 2).
#  TODO(nickhepler): Update to use tidyr mutate.
transform <- mutate(transform, atlas.ed = ifelse(year %in% 1980:1985, 1, 2))
factor(transform$atlas.ed)

# Arrange transform data by year, common name.
arrange(transform, common.name, year)

# Group data for by common.name, year, atlas.ed, breeding.status
by.year.breeding.species <- group_by(transform, common.name, year, atlas.ed, 
  breeding.status)

# Group data for by common.name, year, atlas.ed, location
by.year.location.species <- group_by(transform, common.name, year, atlas.ed, 
  block.id)

# Create new variables to include counts for Bicknell's Thrush.
bicknells.thrush <- summarise(by.year.breeding.species, count = n())
bicknells.thrush <- filter(test.year, common.name == "Bicknell's Thrush")

# Create new variables to include counts for Bicknell's Thrush.
bicknells.thrush <- summarise(by.year.breeding.species, count = n())
bicknells.thrush <- filter(test.year, common.name == "Bicknell's Thrush")

cache('transform')
cache('bicknells.thrush')

#  TODO(nickhepler): Programatically create tibbles for species.
birds <- unique(raw$common.name)
birds <- tolower(birds)
birds <- gsub(" ", ".", birds)
birds <- gsub("'s", "s", birds)