<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>fsx_describe_file_system_aliases</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the DNS aliases that are associated with the specified Amazon FSx for Windows File Server file system

### Description

Returns the DNS aliases that are associated with the specified Amazon
FSx for Windows File Server file system. A history of all DNS aliases
that have been associated with and disassociated from the file system is
available in the list of AdministrativeAction provided in the
`describe_file_systems` operation response.

### Usage

    fsx_describe_file_system_aliases(ClientRequestToken, FileSystemId,
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
id="fsx_describe_file_system_aliases_:_ClientRequestToken">ClientRequestToken</code></td>
<td></td>
</tr>
<tr class="even">
<td><code
id="fsx_describe_file_system_aliases_:_FileSystemId">FileSystemId</code></td>
<td><p>[required] The ID of the file system to return the associated DNS
aliases for (String).</p></td>
</tr>
<tr class="odd">
<td><code
id="fsx_describe_file_system_aliases_:_MaxResults">MaxResults</code></td>
<td><p>Maximum number of DNS aliases to return in the response
(integer). This parameter value must be greater than 0. The number of
items that Amazon FSx returns is the minimum of the
<code>MaxResults</code> parameter specified in the request and the
service's internal maximum number of items per page.</p></td>
</tr>
<tr class="even">
<td><code
id="fsx_describe_file_system_aliases_:_NextToken">NextToken</code></td>
<td><p>Opaque pagination token returned from a previous
<code>describe_file_system_aliases</code> operation (String). If a token
is included in the request, the action continues the list from where the
previous returning call left off.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Aliases = list(
        list(
          Name = "string",
          Lifecycle = "AVAILABLE"|"CREATING"|"DELETING"|"CREATE_FAILED"|"DELETE_FAILED"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_file_system_aliases(
      ClientRequestToken = "string",
      FileSystemId = "string",
      MaxResults = 123,
      NextToken = "string"
    )
