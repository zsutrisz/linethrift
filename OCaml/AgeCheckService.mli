(*
 Autogenerated by Thrift Compiler (0.11.0)

 DO NOT EDIT UNLESS YOU ARE SURE YOU KNOW WHAT YOU ARE DOING
*)

open Thrift
open Line_types

class virtual iface :
object
  method virtual checkUserAge : CarrierCode.t option -> string option -> string option -> Int32.t option -> UserAgeType.t
  method virtual checkUserAgeWithDocomo : string option -> Int32.t option -> string option -> ageCheckDocomoResult
  method virtual retrieveOpenIdAuthUrlWithDocomo : string
  method virtual retrieveRequestToken : CarrierCode.t option -> ageCheckRequestResult
end

class client : Protocol.t -> Protocol.t -> 
object
  method checkUserAge : CarrierCode.t -> string -> string -> Int32.t -> UserAgeType.t
  method checkUserAgeWithDocomo : string -> Int32.t -> string -> ageCheckDocomoResult
  method retrieveOpenIdAuthUrlWithDocomo : string
  method retrieveRequestToken : CarrierCode.t -> ageCheckRequestResult
end

class processor : iface ->
object
  inherit Processor.t

  val processMap : (string, int * Protocol.t * Protocol.t -> unit) Hashtbl.t
  method process : Protocol.t -> Protocol.t -> bool
end
