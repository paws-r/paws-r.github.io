<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>efs_put_lifecycle_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Use this action to manage EFS lifecycle management and EFS Intelligent-Tiering

### Description

Use this action to manage EFS lifecycle management and EFS
Intelligent-Tiering. A `LifecycleConfiguration` consists of one or more
`LifecyclePolicy` objects that define the following:

-   **EFS Lifecycle management** - When Amazon EFS automatically
    transitions files in a file system into the lower-cost EFS
    Infrequent Access (IA) storage class.

    To enable EFS Lifecycle management, set the value of
    `TransitionToIA` to one of the available options.

-   **EFS Intelligent-Tiering** - When Amazon EFS automatically
    transitions files from IA back into the file system's primary
    storage class (EFS Standard or EFS One Zone Standard).

    To enable EFS Intelligent-Tiering, set the value of
    `TransitionToPrimaryStorageClass` to `AFTER_1_ACCESS`.

For more information, see [EFS Lifecycle
Management](https://docs.aws.amazon.com/efs/latest/ug/lifecycle-management-efs.html).

Each Amazon EFS file system supports one lifecycle configuration, which
applies to all files in the file system. If a `LifecycleConfiguration`
object already exists for the specified file system, a
`put_lifecycle_configuration` call modifies the existing configuration.
A `put_lifecycle_configuration` call with an empty `LifecyclePolicies`
array in the request body deletes any existing `LifecycleConfiguration`
and turns off lifecycle management and EFS Intelligent-Tiering for the
file system.

In the request, specify the following:

-   The ID for the file system for which you are enabling, disabling, or
    modifying lifecycle management and EFS Intelligent-Tiering.

-   A `LifecyclePolicies` array of `LifecyclePolicy` objects that define
    when files are moved into IA storage, and when they are moved back
    to Standard storage.

    Amazon EFS requires that each `LifecyclePolicy` object have only
    have a single transition, so the `LifecyclePolicies` array needs to
    be structured with separate `LifecyclePolicy` objects. See the
    example requests in the following section for more information.

This operation requires permissions for the
`elasticfilesystem:PutLifecycleConfiguration` operation.

To apply a `LifecycleConfiguration` object to an encrypted file system,
you need the same Key Management Service permissions as when you created
the encrypted file system.

### Usage

    efs_put_lifecycle_configuration(FileSystemId, LifecyclePolicies)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="efs_put_lifecycle_configuration_:_FileSystemId">FileSystemId</code></td>
<td><p>[required] The ID of the file system for which you are creating
the <code>LifecycleConfiguration</code> object (String).</p></td>
</tr>
<tr class="even">
<td><code
id="efs_put_lifecycle_configuration_:_LifecyclePolicies">LifecyclePolicies</code></td>
<td><p>[required] An array of <code>LifecyclePolicy</code> objects that
define the file system's <code>LifecycleConfiguration</code> object. A
<code>LifecycleConfiguration</code> object informs EFS lifecycle
management and EFS Intelligent-Tiering of the following:</p>
<ul>
<li><p>When to move files in the file system from primary storage to the
IA storage class.</p></li>
<li><p>When to move files that are in IA storage to primary
storage.</p></li>
</ul>
<p>When using the <code>put-lifecycle-configuration</code> CLI command
or the <code>put_lifecycle_configuration</code> API action, Amazon EFS
requires that each <code>LifecyclePolicy</code> object have only a
single transition. This means that in a request body,
<code>LifecyclePolicies</code> must be structured as an array of
<code>LifecyclePolicy</code> objects, one object for each transition,
<code>TransitionToIA</code>,
<code>TransitionToPrimaryStorageClass</code>. See the example requests
in the following section for more information.</p></td>
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

    svc$put_lifecycle_configuration(
      FileSystemId = "string",
      LifecyclePolicies = list(
        list(
          TransitionToIA = "AFTER_7_DAYS"|"AFTER_14_DAYS"|"AFTER_30_DAYS"|"AFTER_60_DAYS"|"AFTER_90_DAYS"|"AFTER_1_DAY",
          TransitionToPrimaryStorageClass = "AFTER_1_ACCESS"
        )
      )
    )

### Examples

    ## Not run: 
    # This operation enables lifecycle management on a file system by creating
    # a new LifecycleConfiguration object. A LifecycleConfiguration object
    # defines when files in an Amazon EFS file system are automatically
    # transitioned to the lower-cost EFS Infrequent Access (IA) storage class.
    # A LifecycleConfiguration applies to all files in a file system.
    svc$put_lifecycle_configuration(
      FileSystemId = "fs-01234567",
      LifecyclePolicies = list(
        list(
          TransitionToIA = "AFTER_30_DAYS"
        )
      )
    )

    ## End(Not run)
