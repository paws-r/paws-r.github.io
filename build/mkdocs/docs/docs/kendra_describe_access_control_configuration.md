<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kendra_describe_access_control_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets information about an access control configuration that you created for your documents in an index

### Description

Gets information about an access control configuration that you created
for your documents in an index. This includes user and group access
information for your documents. This is useful for user context
filtering, where search results are filtered based on the user or their
group access to documents.

### Usage

    kendra_describe_access_control_configuration(IndexId, Id)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="kendra_describe_access_control_configuration_:_IndexId">IndexId</code></td>
<td><p>[required] The identifier of the index for an access control
configuration.</p></td>
</tr>
<tr class="even">
<td><code
id="kendra_describe_access_control_configuration_:_Id">Id</code></td>
<td><p>[required] The identifier of the access control configuration you
want to get information on.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Name = "string",
      Description = "string",
      ErrorMessage = "string",
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

### Request syntax

    svc$describe_access_control_configuration(
      IndexId = "string",
      Id = "string"
    )
