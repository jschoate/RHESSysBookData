library(RHESSysPreprocessing)
# Raster
# ------
# To import spatial data from a folder of rasters:
# 1) Set type to "raster"
type = "raster"
# 2) Set map_dir to the path of the folder containing your rasters
map_dir = "../spatial"

meta = TRUE
# Template
# --------
# The worldfile template is the key document that outlines how your worldfile will be built.
# The template variable should point to the name and location of your template.
template = "../worldfiles/sagehen_subbasin.template"


# Name
# ----
# Set the name and path for all function outputs.
# Suffixes of .world, .flow, and .meta will be appended to the worldfile, flowtable, and metadata files respectively.
name = "sage_subB213"

# Overwrite
# ---------
# TRUE/FALSE if an existing worldfile and flowtable be overwritten.
overwrite =  TRUE

# Streams
# -------
# Streams map to be used in creation of the flowtable - this is just the name of the map, to be found via the method indicated with "type"
streams = "streams.tif"

# Header
# ------
# TRUE/FALSE to produce a header file. Header file will be have same name(and location) set by "name", with the ".hdr" suffix.
header = FALSE

# Multipscale Routing
asprules="../worldfiles/asp_rules"

# Finally, run the function.  Depending on size, it may take a minute or two.
RHESSysPreprocess(
  template = template,
  name = name,
  type = type,
  map_dir = map_dir,
  streams = streams,
  overwrite = overwrite,
  header = header,
  meta = meta,
  asprules = asprules,
  skip_hillslope_check = TRUE)
