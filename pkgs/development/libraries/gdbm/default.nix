{ stdenv, fetchurl }:

stdenv.mkDerivation rec {
  name = "gdbm-1.11";

  src = fetchurl {
    url = "mirror://gnu/gdbm/${name}.tar.gz";
    sha256 = "1hz3jgh3pd4qzp6jy0l8pd8x01g9abw7csnrlnj1a2sxy122z4cd";
  };

  doCheck = true;

  meta = {
    description = "GNU dbm key/value database library";

    longDescription =
      '' GNU dbm (or GDBM, for short) is a library of database functions that
         use extensible hashing and work similar to the standard UNIX dbm.
         These routines are provided to a programmer needing to create and
         manipulate a hashed database.

         The basic use of GDBM is to store key/data pairs in a data file.
         Each key must be unique and each key is paired with only one data
         item.

         The library provides primitives for storing key/data pairs,
         searching and retrieving the data by its key and deleting a key
         along with its data.  It also support sequential iteration over all
         key/data pairs in a database.

         For compatibility with programs using old UNIX dbm function, the
         package also provides traditional dbm and ndbm interfaces.
      '';

    homepage = http://www.gnu.org/software/gdbm/;
    license = stdenv.lib.licenses.gpl3Plus;
    platforms = stdenv.lib.platforms.all;
    maintainers = [ ];
  };
}
