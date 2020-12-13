
# ---- User settings ----------------------
JSON_DIR="/Users/jesse/json-fortran/"
# -----------------------------------------

JSON_LIB=${JSON_DIR}lib/
JSON_INC=${JSON_DIR}lib/

FLAGS="-std=f2008"

gfortran ${FLAGS} -L${JSON_LIB} -I${JSON_INC} -o rd-json rd-json.f90 ${JSON_LIB}libjsonfortran.a
