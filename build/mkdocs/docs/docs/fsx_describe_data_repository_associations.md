<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>fsx_describe_data_repository_associations</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the description of specific Amazon FSx for Lustre or Amazon File Cache data repository associations, if one or more AssociationIds values are provided in the request, or if filters are used in the request

### Description

Returns the description of specific Amazon FSx for Lustre or Amazon File
Cache data repository associations, if one or more `AssociationIds`
values are provided in the request, or if filters are used in the
request. Data repository associations are supported on Amazon File Cache
resources and all Amazon FSx for Lustre file systems excluding
`Scratch_1` deployment types.

You can use filters to narrow the response to include just data
repository associations for specific file systems (use the
`file-system-id` filter with the ID of the file system) or caches (use
the `file-cache-id` filter with the ID of the cache), or data repository
associations for a specific repository type (use the
`data-repository-type` filter with a value of `S3` or `NFS`). If you
don't use filters, the response returns all data repository associations
owned by your Amazon Web Services account in the Amazon Web Services
Region of the endpoint that you're calling.

When retrieving all data repository associations, you can paginate the
response by using the optional `MaxResults` parameter to limit the
number of data repository associations returned in a response. If more
data repository associations remain, a `NextToken` value is returned in
the response. In this case, send a later request with the `NextToken`
request parameter set to the value of `NextToken` from the last
response.

### Usage

    fsx_describe_data_repository_associations(AssociationIds, Filters,
      MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="fsx_describe_data_repository_associations_:_AssociationIds">AssociationIds</code></td>
<td><p>IDs of the data repository associations whose descriptions you
want to retrieve (String).</p></td>
</tr>
<tr class="even">
<td><code
id="fsx_describe_data_repository_associations_:_Filters">Filters</code></td>
<td></td>
</tr>
<tr class="odd">
<td><code
id="fsx_describe_data_repository_associations_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of resources to return in the response. This
value must be an integer greater than zero.</p></td>
</tr>
<tr class="even">
<td><code
id="fsx_describe_data_repository_associations_:_NextToken">NextToken</code></td>
<td></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Associations = list(
        list(
          AssociationId = "string",
          ResourceARN = "string",
          FileSystemId = "string",
          Lifecycle = "CREATING"|"AVAILABLE"|"MISCONFIGURED"|"UPDATING"|"DELETING"|"FAILED",
          FailureDetails = list(
            Message = "string"
          ),
          FileSystemPath = "string",
          DataRepositoryPath = "string",
          BatchImportMetaDataOnCreate = TRUE|FALSE,
          ImportedFileChunkSize = 123,
          S3 = list(
            AutoImportPolicy = list(
              Events = list(
                "NEW"|"CHANGED"|"DELETED"
              )
            ),
            AutoExportPolicy = list(
              Events = list(
                "NEW"|"CHANGED"|"DELETED"
              )
            )
          ),
          Tags = list(
            list(
              Key = "string",
              Value = "string"
            )
          ),
          CreationTime = as.POSIXct(
            "2015-01-01"
          ),
          FileCacheId = "string",
          FileCachePath = "string",
          DataRepositorySubdirectories = list(
            "string"
          ),
          NFS = list(
            Version = "NFS3",
            DnsIps = list(
              "string"
            ),
            AutoExportPolicy = list(
              Events = list(
                "NEW"|"CHANGED"|"DELETED"
              )
            )
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_data_repository_associations(
      AssociationIds = list(
        "string"
      ),
      Filters = list(
        list(
          Name = "file-system-id"|"backup-type"|"file-system-type"|"volume-id"|"data-repository-type"|"file-cache-id"|"file-cache-type",
          Values = list(
            "string"
          )
        )
      ),
      MaxResults = 123,
      NextToken = "string"
    )
