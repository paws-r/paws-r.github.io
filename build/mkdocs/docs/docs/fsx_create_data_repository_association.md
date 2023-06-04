<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>fsx_create_data_repository_association</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an Amazon FSx for Lustre data repository association (DRA)

### Description

Creates an Amazon FSx for Lustre data repository association (DRA). A
data repository association is a link between a directory on the file
system and an Amazon S3 bucket or prefix. You can have a maximum of 8
data repository associations on a file system. Data repository
associations are supported for all file systems except for `Scratch_1`
deployment type.

Each data repository association must have a unique Amazon FSx file
system directory and a unique S3 bucket or prefix associated with it.
You can configure a data repository association for automatic import
only, for automatic export only, or for both. To learn more about
linking a data repository to your file system, see [Linking your file
system to an S3
bucket](https://docs.aws.amazon.com/fsx/latest/LustreGuide/create-dra-linked-data-repo.html).

`create_data_repository_association` isn't supported on Amazon File
Cache resources. To create a DRA on Amazon File Cache, use the
`create_file_cache` operation.

### Usage

    fsx_create_data_repository_association(FileSystemId, FileSystemPath,
      DataRepositoryPath, BatchImportMetaDataOnCreate, ImportedFileChunkSize,
      S3, ClientRequestToken, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="fsx_create_data_repository_association_:_FileSystemId">FileSystemId</code></td>
<td><p>[required]</p></td>
</tr>
<tr class="even">
<td><code
id="fsx_create_data_repository_association_:_FileSystemPath">FileSystemPath</code></td>
<td><p>A path on the file system that points to a high-level directory
(such as <code style="white-space: pre;">⁠/ns1/⁠</code>) or subdirectory
(such as <code style="white-space: pre;">⁠/ns1/subdir/⁠</code>) that will
be mapped 1-1 with <code>DataRepositoryPath</code>. The leading forward
slash in the name is required. Two data repository associations cannot
have overlapping file system paths. For example, if a data repository is
associated with file system path <code
style="white-space: pre;">⁠/ns1/⁠</code>, then you cannot link another
data repository with file system path <code
style="white-space: pre;">⁠/ns1/ns2⁠</code>.</p>
<p>This path specifies where in your file system files will be exported
from or imported to. This file system directory can be linked to only
one Amazon S3 bucket, and no other S3 bucket can be linked to the
directory.</p>
<p>If you specify only a forward slash (<code>/</code>) as the file
system path, you can link only one data repository to the file system.
You can only specify "/" as the file system path for the first data
repository associated with a file system.</p></td>
</tr>
<tr class="odd">
<td><code
id="fsx_create_data_repository_association_:_DataRepositoryPath">DataRepositoryPath</code></td>
<td><p>[required] The path to the Amazon S3 data repository that will be
linked to the file system. The path can be an S3 bucket or prefix in the
format <code style="white-space: pre;">⁠s3://myBucket/myPrefix/⁠</code>.
This path specifies where in the S3 data repository files will be
imported from or exported to.</p></td>
</tr>
<tr class="even">
<td><code
id="fsx_create_data_repository_association_:_BatchImportMetaDataOnCreate">BatchImportMetaDataOnCreate</code></td>
<td><p>Set to <code>true</code> to run an import data repository task to
import metadata from the data repository to the file system after the
data repository association is created. Default is
<code>false</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="fsx_create_data_repository_association_:_ImportedFileChunkSize">ImportedFileChunkSize</code></td>
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
id="fsx_create_data_repository_association_:_S3">S3</code></td>
<td><p>The configuration for an Amazon S3 data repository linked to an
Amazon FSx Lustre file system with a data repository association. The
configuration defines which file events (new, changed, or deleted files
or directories) are automatically imported from the linked data
repository to the file system or automatically exported from the file
system to the data repository.</p></td>
</tr>
<tr class="odd">
<td><code
id="fsx_create_data_repository_association_:_ClientRequestToken">ClientRequestToken</code></td>
<td></td>
</tr>
<tr class="even">
<td><code
id="fsx_create_data_repository_association_:_Tags">Tags</code></td>
<td></td>
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

    svc$create_data_repository_association(
      FileSystemId = "string",
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
      ClientRequestToken = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
