<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cognitosync_update_records</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Posts updates to records and adds and deletes records for a dataset and user

### Description

Posts updates to records and adds and deletes records for a dataset and
user.

The sync count in the record patch is your last known sync count for
that record. The server will reject an UpdateRecords request with a
ResourceConflictException if you try to patch a record with a new value
but a stale sync count.

For example, if the sync count on the server is 5 for a key called
highScore and you try and submit a new highScore with sync count of 4,
the request will be rejected. To obtain the current sync count for a
record, call ListRecords. On a successful update of the record, the
response returns the new sync count for that record. You should present
that sync count the next time you try to update that same record. When
the record does not exist, specify the sync count as 0.

This API can be called with temporary user credentials provided by
Cognito Identity or with developer credentials.

### Usage

    cognitosync_update_records(IdentityPoolId, IdentityId, DatasetName,
      DeviceId, RecordPatches, SyncSessionToken, ClientContext)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cognitosync_update_records_:_IdentityPoolId">IdentityPoolId</code></td>
<td><p>[required] A name-spaced GUID (for example,
us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon
Cognito. GUID generation is unique within a region.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitosync_update_records_:_IdentityId">IdentityId</code></td>
<td><p>[required] A name-spaced GUID (for example,
us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon
Cognito. GUID generation is unique within a region.</p></td>
</tr>
<tr class="odd">
<td><code
id="cognitosync_update_records_:_DatasetName">DatasetName</code></td>
<td><p>[required] A string of up to 128 characters. Allowed characters
are a-z, A-Z, 0-9, '_' (underscore), '-' (dash), and '.' (dot).</p></td>
</tr>
<tr class="even">
<td><code
id="cognitosync_update_records_:_DeviceId">DeviceId</code></td>
<td><p>The unique ID generated for this device by Cognito.</p></td>
</tr>
<tr class="odd">
<td><code
id="cognitosync_update_records_:_RecordPatches">RecordPatches</code></td>
<td><p>A list of patch operations.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitosync_update_records_:_SyncSessionToken">SyncSessionToken</code></td>
<td><p>[required] The SyncSessionToken returned by a previous call to
ListRecords for this dataset and identity.</p></td>
</tr>
<tr class="odd">
<td><code
id="cognitosync_update_records_:_ClientContext">ClientContext</code></td>
<td><p>Intended to supply a device ID that will populate the
lastModifiedBy field referenced in other methods. The ClientContext
field is not yet implemented.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Records = list(
        list(
          Key = "string",
          Value = "string",
          SyncCount = 123,
          LastModifiedDate = as.POSIXct(
            "2015-01-01"
          ),
          LastModifiedBy = "string",
          DeviceLastModifiedDate = as.POSIXct(
            "2015-01-01"
          )
        )
      )
    )

### Request syntax

    svc$update_records(
      IdentityPoolId = "string",
      IdentityId = "string",
      DatasetName = "string",
      DeviceId = "string",
      RecordPatches = list(
        list(
          Op = "replace"|"remove",
          Key = "string",
          Value = "string",
          SyncCount = 123,
          DeviceLastModifiedDate = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      SyncSessionToken = "string",
      ClientContext = "string"
    )
