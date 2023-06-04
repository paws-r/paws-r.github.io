<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kendra_update_access_control_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates an access control configuration for your documents in an index

### Description

Updates an access control configuration for your documents in an index.
This includes user and group access information for your documents. This
is useful for user context filtering, where search results are filtered
based on the user or their group access to documents.

You can update an access control configuration you created without
indexing all of your documents again. For example, your index contains
top-secret company documents that only certain employees or users should
access. You created an 'allow' access control configuration for one user
who recently joined the 'top-secret' team, switching from a team with
'deny' access to top-secret documents. However, the user suddenly
returns to their previous team and should no longer have access to top
secret documents. You can update the access control configuration to
re-configure access control for your documents as circumstances change.

You call the `batch_put_document` API to apply the updated access
control configuration, with the `AccessControlConfigurationId` included
in the
[Document](https://docs.aws.amazon.com/kendra/latest/APIReference/API_Document.html)
object. If you use an S3 bucket as a data source, you synchronize your
data source to apply the `AccessControlConfigurationId` in the
`.metadata.json` file. Amazon Kendra currently only supports access
control configuration for S3 data sources and documents indexed using
the `batch_put_document` API.

### Usage

    kendra_update_access_control_configuration(IndexId, Id, Name,
      Description, AccessControlList, HierarchicalAccessControlList)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="kendra_update_access_control_configuration_:_IndexId">IndexId</code></td>
<td><p>[required] The identifier of the index for an access control
configuration.</p></td>
</tr>
<tr class="even">
<td><code
id="kendra_update_access_control_configuration_:_Id">Id</code></td>
<td><p>[required] The identifier of the access control configuration you
want to update.</p></td>
</tr>
<tr class="odd">
<td><code
id="kendra_update_access_control_configuration_:_Name">Name</code></td>
<td><p>A new name for the access control configuration.</p></td>
</tr>
<tr class="even">
<td><code
id="kendra_update_access_control_configuration_:_Description">Description</code></td>
<td><p>A new description for the access control configuration.</p></td>
</tr>
<tr class="odd">
<td><code
id="kendra_update_access_control_configuration_:_AccessControlList">AccessControlList</code></td>
<td><p>Information you want to update on principals (users and/or
groups) and which documents they should have access to. This is useful
for user context filtering, where search results are filtered based on
the user or their group access to documents.</p></td>
</tr>
<tr class="even">
<td><code
id="kendra_update_access_control_configuration_:_HierarchicalAccessControlList">HierarchicalAccessControlList</code></td>
<td><p>The updated list of <a
href="https://docs.aws.amazon.com/kendra/latest/APIReference/API_Principal.html">principal</a>
lists that define the hierarchy for which documents users should have
access to.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_access_control_configuration(
      IndexId = "string",
      Id = "string",
      Name = "string",
      Description = "string",
      AccessControlList = list(
        list(
          Name = "string",
          Type = "USER"|"GROUP",
          Access = "ALLOW"|"DENY",
          DataSourceId = "string"
        )
      ),
      HierarchicalAccessControlList = list(
        list(
          PrincipalList = list(
            list(
              Name = "string",
              Type = "USER"|"GROUP",
              Access = "ALLOW"|"DENY",
              DataSourceId = "string"
            )
          )
        )
      )
    )
