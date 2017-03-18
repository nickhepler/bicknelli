#  02-tidy_data.R
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

# Define packages to be loaded
pckgs <- c("tidyverse", "ProjectTemplate","forcats", "lubridate")

# Load packages to be loaded
lapply(pckgs, require, character.only = TRUE)

# Load bird_atlas_raw.csv to Global Environment.
raw <- read_csv("./data/bird_atlas_raw.csv")

# Modify variable names to lower case and remove whitespace from names.
names(raw) <- tolower(names(raw))
names(raw) <- gsub(" ", ".", names(raw))

# Apply factors to specific variables. 
factor(raw$block.id, unique(raw$block.id))
factor(raw$county, unique(raw$county))
factor(raw$common.name, unique(raw$common.name))
factor(raw$breeding.status, unique(raw$breeding.status))

# Apply/create date variable for year.
raw$year <- year(make_date(year = raw$year))

# Check for explicate null values.
sapply(raw, function(x) sum(is.na(x)))

#  Cache tidy data.
cache('raw')