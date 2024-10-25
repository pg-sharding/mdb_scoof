/* contrib/mdb_scoof/mdb_scoof--1.0.sql */

-- complain if script is sourced in psql, rather than via CREATE EXTENSION
\echo Use "CREATE EXTENSION mdb_scoof" to load this file. \quit

--
-- mdb_column_toast_chunk_id()
--
CREATE FUNCTION mdb_column_toast_chunk_id(
    VARIADIC "any"
)
RETURNS OID
AS 'MODULE_PATHNAME', 'mdb_column_toast_chunk_id'
LANGUAGE C STRICT PARALLEL SAFE;
