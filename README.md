# RandAPI-Proto

This repository defines an interface for a gRPC service that provides random numbers based 
on a random number generator seeded with rotating entropy. For the implementation of this 
API see ###. 

## Endpoints

### Boolean

req: `google/protobuf/empty.proto`

resp: `BooleanResponse { result bool }`

Returns a true/false value with a 0.5 chance of being true.

### WeightedBoolean

req: `BooleanRequest { FalseWeight int32, TrueWeight int32 }`

resp: `BooleanResponse { result bool }`

Returns a true false value with a `req.TrueWeight/(req.TrueWeight+req.FalseWeight)` chance of being true.

### Integer

req: `google/protobuf/empty.proto`

resp: `IntegerResponse{result int32}`

Returns a random, uniformly distributed integer on the interval `[0, int32.max]`.

### IntegerN

req: `IntegerRequest {max int32}`

resp: `IntegerResponse{result int32}`

Returns a ran integer uniformly distributed over the interval `[0, req.max]`.