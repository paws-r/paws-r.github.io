<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>efs_create_access_point</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an EFS access point

### Description

Creates an EFS access point. An access point is an application-specific
view into an EFS file system that applies an operating system user and
group, and a file system path, to any file system request made through
the access point. The operating system user and group override any
identity information provided by the NFS client. The file system path is
exposed as the access point's root directory. Applications using the
access point can only access data in the application's own directory and
any subdirectories. To learn more, see [Mounting a file system using EFS
access
points](https://docs.aws.amazon.com/efs/latest/ug/efs-access-points.html).

If multiple requests to create access points on the same file system are
sent in quick succession, and the file system is near the limit of 1000
access points, you may experience a throttling response for these
requests. This is to ensure that the file system does not exceed the
stated access point limit.

This operation requires permissions for the
`elasticfilesystem:CreateAccessPoint` action.

### Usage

    efs_create_access_point(ClientToken, Tags, FileSystemId, PosixUser,
      RootDirectory)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="efs_create_access_point_:_ClientToken">ClientToken</code></td>
<td><p>[required] A string of up to 64 ASCII characters that Amazon EFS
uses to ensure idempotent creation.</p></td>
</tr>
<tr class="even">
<td><code id="efs_create_access_point_:_Tags">Tags</code></td>
<td><p>Creates tags associated with the access point. Each tag is a
key-value pair, each key must be unique. For more information, see <a
href="https://docs.aws.amazon.com/tag-editor/latest/userguide/tagging.html">Tagging
Amazon Web Services resources</a> in the <em>Amazon Web Services General
Reference Guide</em>.</p></td>
</tr>
<tr class="odd">
<td><code
id="efs_create_access_point_:_FileSystemId">FileSystemId</code></td>
<td><p>[required] The ID of the EFS file system that the access point
provides access to.</p></td>
</tr>
<tr class="even">
<td><code id="efs_create_access_point_:_PosixUser">PosixUser</code></td>
<td><p>The operating system user and group applied to all file system
requests made using the access point.</p></td>
</tr>
<tr class="odd">
<td><code
id="efs_create_access_point_:_RootDirectory">RootDirectory</code></td>
<td><p>Specifies the directory on the Amazon EFS file system that the
access point exposes as the root directory of your file system to NFS
clients using the access point. The clients using the access point can
only access the root directory and below. If the
<code>RootDirectory</code> \&gt; <code>Path</code> specified does not
exist, EFS creates it and applies the <code>CreationInfo</code> settings
when a client connects to an access point. When specifying a
<code>RootDirectory</code>, you must provide the <code>Path</code>, and
the <code>CreationInfo</code>.</p>
<p>Amazon EFS creates a root directory only if you have provided the
CreationInfo: OwnUid, OwnGID, and permissions for the directory. If you
do not provide this information, Amazon EFS does not create the root
directory. If the root directory does not exist, attempts to mount using
the access point will fail.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ClientToken = "string",
      Name = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      ),
      AccessPointId = "string",
      AccessPointArn = "string",
      FileSystemId = "string",
      PosixUser = list(
        Uid = 123,
        Gid = 123,
        SecondaryGids = list(
          123
        )
      ),
      RootDirectory = list(
        Path = "string",
        CreationInfo = list(
          OwnerUid = 123,
          OwnerGid = 123,
          Permissions = "string"
        )
      ),
      OwnerId = "string",
      LifeCycleState = "creating"|"available"|"updating"|"deleting"|"deleted"|"error"
    )

### Request syntax

    svc$create_access_point(
      ClientToken = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      ),
      FileSystemId = "string",
      PosixUser = list(
        Uid = 123,
        Gid = 123,
        SecondaryGids = list(
          123
        )
      ),
      RootDirectory = list(
        Path = "string",
        CreationInfo = list(
          OwnerUid = 123,
          OwnerGid = 123,
          Permissions = "string"
        )
      )
    )
