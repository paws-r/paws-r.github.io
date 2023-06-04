<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>efs_describe_lifecycle_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the current LifecycleConfiguration object for the specified Amazon EFS file system

### Description

Returns the current `LifecycleConfiguration` object for the specified
Amazon EFS file system. EFS lifecycle management uses the
`LifecycleConfiguration` object to identify which files to move to the
EFS Infrequent Access (IA) storage class. For a file system without a
`LifecycleConfiguration` object, the call returns an empty array in the
response.

When EFS Intelligent-Tiering is enabled,
`TransitionToPrimaryStorageClass` has a value of `AFTER_1_ACCESS`.

This operation requires permissions for the
`elasticfilesystem:DescribeLifecycleConfiguration` operation.

### Usage

    efs_describe_lifecycle_configuration(FileSystemId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="efs_describe_lifecycle_configuration_:_FileSystemId">FileSystemId</code></td>
<td><p>[required] The ID of the file system whose
<code>LifecycleConfiguration</code> object you want to retrieve
(String).</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      LifecyclePolicies = list(
        list(
          TransitionToIA = "AFTER_7_DAYS"|"AFTER_14_DAYS"|"AFTER_30_DAYS"|"AFTER_60_DAYS"|"AFTER_90_DAYS"|"AFTER_1_DAY",
          TransitionToPrimaryStorageClass = "AFTER_1_ACCESS"
        )
      )
    )

### Request syntax

    svc$describe_lifecycle_configuration(
      FileSystemId = "string"
    )

### Examples

    ## Not run: 
    # This operation describes a file system's LifecycleConfiguration. EFS
    # lifecycle management uses the LifecycleConfiguration object to identify
    # which files to move to the EFS Infrequent Access (IA) storage class.
    svc$describe_lifecycle_configuration(
      FileSystemId = "fs-01234567"
    )

    ## End(Not run)
