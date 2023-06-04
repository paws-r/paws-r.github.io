<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>efs_describe_file_systems</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the description of a specific Amazon EFS file system if either the file system CreationToken or the FileSystemId is provided

### Description

Returns the description of a specific Amazon EFS file system if either
the file system `CreationToken` or the `FileSystemId` is provided.
Otherwise, it returns descriptions of all file systems owned by the
caller's Amazon Web Services account in the Amazon Web Services Region
of the endpoint that you're calling.

When retrieving all file system descriptions, you can optionally specify
the `MaxItems` parameter to limit the number of descriptions in a
response. This number is automatically set to 100. If more file system
descriptions remain, Amazon EFS returns a `NextMarker`, an opaque token,
in the response. In this case, you should send a subsequent request with
the `Marker` request parameter set to the value of `NextMarker`.

To retrieve a list of your file system descriptions, this operation is
used in an iterative process, where `describe_file_systems` is called
first without the `Marker` and then the operation continues to call it
with the `Marker` parameter set to the value of the `NextMarker` from
the previous response until the response has no `NextMarker`.

The order of file systems returned in the response of one
`describe_file_systems` call and the order of file systems returned
across the responses of a multi-call iteration is unspecified.

This operation requires permissions for the
`elasticfilesystem:DescribeFileSystems` action.

### Usage

    efs_describe_file_systems(MaxItems, Marker, CreationToken, FileSystemId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="efs_describe_file_systems_:_MaxItems">MaxItems</code></td>
<td><p>(Optional) Specifies the maximum number of file systems to return
in the response (integer). This number is automatically set to 100. The
response is paginated at 100 per page if you have more than 100 file
systems.</p></td>
</tr>
<tr class="even">
<td><code id="efs_describe_file_systems_:_Marker">Marker</code></td>
<td><p>(Optional) Opaque pagination token returned from a previous
<code>describe_file_systems</code> operation (String). If present,
specifies to continue the list from where the returning call had left
off.</p></td>
</tr>
<tr class="odd">
<td><code
id="efs_describe_file_systems_:_CreationToken">CreationToken</code></td>
<td><p>(Optional) Restricts the list to the file system with this
creation token (String). You specify a creation token when you create an
Amazon EFS file system.</p></td>
</tr>
<tr class="even">
<td><code
id="efs_describe_file_systems_:_FileSystemId">FileSystemId</code></td>
<td><p>(Optional) ID of the file system whose description you want to
retrieve (String).</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Marker = "string",
      FileSystems = list(
        list(
          OwnerId = "string",
          CreationToken = "string",
          FileSystemId = "string",
          FileSystemArn = "string",
          CreationTime = as.POSIXct(
            "2015-01-01"
          ),
          LifeCycleState = "creating"|"available"|"updating"|"deleting"|"deleted"|"error",
          Name = "string",
          NumberOfMountTargets = 123,
          SizeInBytes = list(
            Value = 123,
            Timestamp = as.POSIXct(
              "2015-01-01"
            ),
            ValueInIA = 123,
            ValueInStandard = 123
          ),
          PerformanceMode = "generalPurpose"|"maxIO",
          Encrypted = TRUE|FALSE,
          KmsKeyId = "string",
          ThroughputMode = "bursting"|"provisioned"|"elastic",
          ProvisionedThroughputInMibps = 123.0,
          AvailabilityZoneName = "string",
          AvailabilityZoneId = "string",
          Tags = list(
            list(
              Key = "string",
              Value = "string"
            )
          )
        )
      ),
      NextMarker = "string"
    )

### Request syntax

    svc$describe_file_systems(
      MaxItems = 123,
      Marker = "string",
      CreationToken = "string",
      FileSystemId = "string"
    )

### Examples

    ## Not run: 
    # This operation describes all of the EFS file systems in an account.
    svc$describe_file_systems()

    ## End(Not run)
