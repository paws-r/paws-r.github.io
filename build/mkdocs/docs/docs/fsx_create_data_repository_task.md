<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>fsx_create_data_repository_task</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an Amazon FSx for Lustre data repository task

### Description

Creates an Amazon FSx for Lustre data repository task. You use data
repository tasks to perform bulk operations between your Amazon FSx file
system and its linked data repositories. An example of a data repository
task is exporting any data and metadata changes, including POSIX
metadata, to files, directories, and symbolic links (symlinks) from your
FSx file system to a linked data repository. A
`create_data_repository_task` operation will fail if a data repository
is not linked to the FSx file system. To learn more about data
repository tasks, see [Data Repository
Tasks](https://docs.aws.amazon.com/fsx/latest/LustreGuide/data-repository-tasks.html).
To learn more about linking a data repository to your file system, see
[Linking your file system to an S3
bucket](https://docs.aws.amazon.com/fsx/latest/LustreGuide/create-dra-linked-data-repo.html).

### Usage

    fsx_create_data_repository_task(Type, Paths, FileSystemId, Report,
      ClientRequestToken, Tags, CapacityToRelease)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="fsx_create_data_repository_task_:_Type">Type</code></td>
<td><p>[required] Specifies the type of data repository task to
create.</p></td>
</tr>
<tr class="even">
<td><code id="fsx_create_data_repository_task_:_Paths">Paths</code></td>
<td><p>A list of paths for the data repository task to use when the task
is processed. If a path that you provide isn't valid, the task
fails.</p>
<ul>
<li><p>For export tasks, the list contains paths on the Amazon FSx file
system from which the files are exported to the Amazon S3 bucket. The
default path is the file system root directory. The paths you provide
need to be relative to the mount point of the file system. If the mount
point is <code style="white-space: pre;">⁠/mnt/fsx⁠</code> and <code
style="white-space: pre;">⁠/mnt/fsx/path1⁠</code> is a directory or file
on the file system you want to export, then the path to provide is
<code>path1</code>.</p></li>
<li><p>For import tasks, the list contains paths in the Amazon S3 bucket
from which POSIX metadata changes are imported to the Amazon FSx file
system. The path can be an S3 bucket or prefix in the format <code
style="white-space: pre;">⁠s3://myBucket/myPrefix⁠</code> (where
<code>myPrefix</code> is optional).</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="fsx_create_data_repository_task_:_FileSystemId">FileSystemId</code></td>
<td><p>[required]</p></td>
</tr>
<tr class="even">
<td><code
id="fsx_create_data_repository_task_:_Report">Report</code></td>
<td><p>[required] Defines whether or not Amazon FSx provides a
CompletionReport once the task has completed. A CompletionReport
provides a detailed report on the files that Amazon FSx processed that
meet the criteria specified by the <code>Scope</code> parameter. For
more information, see <a
href="https://docs.aws.amazon.com/fsx/latest/LustreGuide/task-completion-report.html">Working
with Task Completion Reports</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="fsx_create_data_repository_task_:_ClientRequestToken">ClientRequestToken</code></td>
<td></td>
</tr>
<tr class="even">
<td><code id="fsx_create_data_repository_task_:_Tags">Tags</code></td>
<td></td>
</tr>
<tr class="odd">
<td><code
id="fsx_create_data_repository_task_:_CapacityToRelease">CapacityToRelease</code></td>
<td><p>Specifies the amount of data to release, in GiB, by an Amazon
File Cache <code>AUTO_RELEASE_DATA</code> task that automatically
releases files from the cache.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DataRepositoryTask = list(
        TaskId = "string",
        Lifecycle = "PENDING"|"EXECUTING"|"FAILED"|"SUCCEEDED"|"CANCELED"|"CANCELING",
        Type = "EXPORT_TO_REPOSITORY"|"IMPORT_METADATA_FROM_REPOSITORY"|"RELEASE_DATA_FROM_FILESYSTEM"|"AUTO_RELEASE_DATA",
        CreationTime = as.POSIXct(
          "2015-01-01"
        ),
        StartTime = as.POSIXct(
          "2015-01-01"
        ),
        EndTime = as.POSIXct(
          "2015-01-01"
        ),
        ResourceARN = "string",
        Tags = list(
          list(
            Key = "string",
            Value = "string"
          )
        ),
        FileSystemId = "string",
        Paths = list(
          "string"
        ),
        FailureDetails = list(
          Message = "string"
        ),
        Status = list(
          TotalCount = 123,
          SucceededCount = 123,
          FailedCount = 123,
          LastUpdatedTime = as.POSIXct(
            "2015-01-01"
          ),
          ReleasedCapacity = 123
        ),
        Report = list(
          Enabled = TRUE|FALSE,
          Path = "string",
          Format = "REPORT_CSV_20191124",
          Scope = "FAILED_FILES_ONLY"
        ),
        CapacityToRelease = 123,
        FileCacheId = "string"
      )
    )

### Request syntax

    svc$create_data_repository_task(
      Type = "EXPORT_TO_REPOSITORY"|"IMPORT_METADATA_FROM_REPOSITORY"|"RELEASE_DATA_FROM_FILESYSTEM"|"AUTO_RELEASE_DATA",
      Paths = list(
        "string"
      ),
      FileSystemId = "string",
      Report = list(
        Enabled = TRUE|FALSE,
        Path = "string",
        Format = "REPORT_CSV_20191124",
        Scope = "FAILED_FILES_ONLY"
      ),
      ClientRequestToken = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      ),
      CapacityToRelease = 123
    )
