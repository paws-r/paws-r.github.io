<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>fsx_associate_file_system_aliases</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Use this action to associate one or more Domain Name Server (DNS) aliases with an existing Amazon FSx for Windows File Server file system

### Description

Use this action to associate one or more Domain Name Server (DNS)
aliases with an existing Amazon FSx for Windows File Server file system.
A file system can have a maximum of 50 DNS aliases associated with it at
any one time. If you try to associate a DNS alias that is already
associated with the file system, FSx takes no action on that alias in
the request. For more information, see [Working with DNS
Aliases](https://docs.aws.amazon.com/fsx/latest/WindowsGuide/managing-dns-aliases.html)
and [Walkthrough 5: Using DNS aliases to access your file
system](https://docs.aws.amazon.com/fsx/latest/WindowsGuide/walkthrough05-file-system-custom-CNAME.html),
including additional steps you must take to be able to access your file
system using a DNS alias.

The system response shows the DNS aliases that Amazon FSx is attempting
to associate with the file system. Use the API operation to monitor the
status of the aliases Amazon FSx is associating with the file system.

### Usage

    fsx_associate_file_system_aliases(ClientRequestToken, FileSystemId,
      Aliases)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="fsx_associate_file_system_aliases_:_ClientRequestToken">ClientRequestToken</code></td>
<td></td>
</tr>
<tr class="even">
<td><code
id="fsx_associate_file_system_aliases_:_FileSystemId">FileSystemId</code></td>
<td><p>[required] Specifies the file system with which you want to
associate one or more DNS aliases.</p></td>
</tr>
<tr class="odd">
<td><code
id="fsx_associate_file_system_aliases_:_Aliases">Aliases</code></td>
<td><p>[required] An array of one or more DNS alias names to associate
with the file system. The alias name has to comply with the following
formatting requirements:</p>
<ul>
<li><p>Formatted as a fully-qualified domain name (FQDN),
<em>hostname.domain</em> , for example,
<code>accounting.corp.example.com</code>.</p></li>
<li><p>Can contain alphanumeric characters and the hyphen (-).</p></li>
<li><p>Cannot start or end with a hyphen.</p></li>
<li><p>Can start with a numeric.</p></li>
</ul>
<p>For DNS alias names, Amazon FSx stores alphabetic characters as
lowercase letters (a-z), regardless of how you specify them: as
uppercase letters, lowercase letters, or the corresponding letters in
escape codes.</p></td>
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
      )
    )

### Request syntax

    svc$associate_file_system_aliases(
      ClientRequestToken = "string",
      FileSystemId = "string",
      Aliases = list(
        "string"
      )
    )
