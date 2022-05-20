INTERFACE z100085_zif_proubc_object
  PUBLIC .

  "" { status: "something", baseline_id: ""}
  TYPES: BEGIN OF ty_update_status_req,
           status      TYPE string,
           baseline_id TYPE z100085_bpiobj-baseline_id,
         END OF ty_update_status_req.

    TYPES: BEGIN OF ty_update_status_res,
           status      TYPE string,
           baseline_id TYPE z100085_bpiobj-baseline_id,
           object_id type z100085_bpiobj-object_id,
         END OF ty_update_status_res.

  TYPES: BEGIN OF ty_update_object_req,
           payload     TYPE REF TO data, "TODO this gonna be idoc data
           type        TYPE string, "for idocs, basic type
           baseline_id TYPE z100085_bpiobj-baseline_id,
         END OF ty_update_object_req.

  TYPES: BEGIN OF ty_create_object_req,
           payload     TYPE REF TO data, "TODO this gonna be idoc data
           type        TYPE string, "for idocs, basic type - this maps to schema_id
           schema_type TYPE string, "aka IDOC
           baseline_id TYPE z100085_bpiobj-baseline_id,
         END OF ty_create_object_req.

  TYPES: BEGIN OF ty_create_object_req_objid,
           payload     TYPE REF TO data, "TODO this gonna be idoc data
           type        TYPE string, "for idocs, basic type - this maps to schema_id
           schema_type TYPE string, "aka IDOC
           baseline_id TYPE z100085_bpiobj-baseline_id,
           object_id   TYPE z100085_bpiobj-object_id,
         END OF ty_create_object_req_objid.

  TYPES: tty_create_object_req_objid TYPE TABLE OF ty_create_object_req_objid.

ENDINTERFACE.
