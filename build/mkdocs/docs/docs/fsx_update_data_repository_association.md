<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>fsx_update_data_repository_association</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the configuration of an existing data repository association on an Amazon FSx for Lustre file system

### Description

Updates the configuration of an existing data repository association on
an Amazon FSx for Lustre file system. Data repository associations are
supported for all file systems except for `Scratch_1` deployment type.

### Usage

    fsx_update_data_repository_association(AssociationId,
      ClientRequestToken, ImportedFileChunkSize, S3)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="fsx_update_data_repository_association_:_AssociationId">AssociationId</code></td>
<td><p>[required] The ID of the data repository association that you are
updating.</p></td>
</tr>
<tr class="even">
<td><code
id="fsx_update_data_repository_association_:_ClientRequestToken">ClientRequestToken</code></td>
<td></td>
</tr>
<tr class="odd">
<td><code
id="fsx_update_data_repository_association_:_ImportedFileChunkSize">ImportedFileChunkSize</code></td>
<td><p>For files imported from a data repository, this value determines
the stripe count and maximum amount of data per file (in MiB) stored on
a single physical disk. The maximum number of disks that a single file
can be striped across is limited by the total number of disks that make
up the file system.</p>
<p>The default chunk size is 1,024 MiB (1 GiB) and can go as high as
512,000 MiB (500 GiB). Amazon S3 objects have a maximum size of 5
TB.</p></td>
</tr>
<tr class="even">
<td><code
id="fsx_update_data_repository_association_:_S3">S3</code></td>
<td><p>The configuration for an Amazon S3 data repository linked to an
Amazon FSx Lustre file system with a data repository association. The
configuration defines which file events (new, changed, or deleted files
or directories) are automatically imported from the linked data
repository to the file system or automatically exported from the file
system to the data repository.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Association = list(
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
    )

### Request syntax

    svc$update_data_repository_association(
      AssociationId = "string",
      ClientRequestToken = "string",
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
      )
    )
