<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>dynamodbstreams_get_records</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the stream records from a given shard

### Description

Retrieves the stream records from a given shard.

Specify a shard iterator using the `ShardIterator` parameter. The shard
iterator specifies the position in the shard from which you want to
start reading stream records sequentially. If there are no stream
records available in the portion of the shard that the iterator points
to, `get_records` returns an empty list. Note that it might take
multiple calls to get to a portion of the shard that contains stream
records.

`get_records` can retrieve a maximum of 1 MB of data or 1000 stream
records, whichever comes first.

### Usage

    dynamodbstreams_get_records(ShardIterator, Limit)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="dynamodbstreams_get_records_:_ShardIterator">ShardIterator</code></td>
<td><p>[required] A shard iterator that was retrieved from a previous
GetShardIterator operation. This iterator can be used to access the
stream records in this shard.</p></td>
</tr>
<tr class="even">
<td><code id="dynamodbstreams_get_records_:_Limit">Limit</code></td>
<td><p>The maximum number of records to return from the shard. The upper
limit is 1000.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Records = list(
        list(
          eventID = "string",
          eventName = "INSERT"|"MODIFY"|"REMOVE",
          eventVersion = "string",
          eventSource = "string",
          awsRegion = "string",
          dynamodb = list(
            ApproximateCreationDateTime = as.POSIXct(
              "2015-01-01"
            ),
            Keys = list(
              list(
                S = "string",
                N = "string",
                B = raw,
                SS = list(
                  "string"
                ),
                NS = list(
                  "string"
                ),
                BS = list(
                  raw
                ),
                M = list(
                  list()
                ),
                L = list(
                  list()
                ),
                NULL = TRUE|FALSE,
                BOOL = TRUE|FALSE
              )
            ),
            NewImage = list(
              list(
                S = "string",
                N = "string",
                B = raw,
                SS = list(
                  "string"
                ),
                NS = list(
                  "string"
                ),
                BS = list(
                  raw
                ),
                M = list(
                  list()
                ),
                L = list(
                  list()
                ),
                NULL = TRUE|FALSE,
                BOOL = TRUE|FALSE
              )
            ),
            OldImage = list(
              list(
                S = "string",
                N = "string",
                B = raw,
                SS = list(
                  "string"
                ),
                NS = list(
                  "string"
                ),
                BS = list(
                  raw
                ),
                M = list(
                  list()
                ),
                L = list(
                  list()
                ),
                NULL = TRUE|FALSE,
                BOOL = TRUE|FALSE
              )
            ),
            SequenceNumber = "string",
            SizeBytes = 123,
            StreamViewType = "NEW_IMAGE"|"OLD_IMAGE"|"NEW_AND_OLD_IMAGES"|"KEYS_ONLY"
          ),
          userIdentity = list(
            PrincipalId = "string",
            Type = "string"
          )
        )
      ),
      NextShardIterator = "string"
    )

### Request syntax

    svc$get_records(
      ShardIterator = "string",
      Limit = 123
    )

### Examples

    ## Not run: 
    # The following example retrieves all the stream records from a shard.
    svc$get_records(
      ShardIterator = "arn:aws:dynamodb:us-west-2:111122223333:table/Forum/stre..."
    )

    ## End(Not run)
