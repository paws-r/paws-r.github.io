<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>opsworkscm_export_server_engine_attribute</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Exports a specified server engine attribute as a base64-encoded string

### Description

Exports a specified server engine attribute as a base64-encoded string.
For example, you can export user data that you can use in EC2 to
associate nodes with a server.

This operation is synchronous.

A `ValidationException` is raised when parameters of the request are not
valid. A `ResourceNotFoundException` is thrown when the server does not
exist. An `InvalidStateException` is thrown when the server is in any of
the following states: CREATING, TERMINATED, FAILED or DELETING.

### Usage

    opsworkscm_export_server_engine_attribute(ExportAttributeName,
      ServerName, InputAttributes)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="opsworkscm_export_server_engine_attribute_:_ExportAttributeName">ExportAttributeName</code></td>
<td><p>[required] The name of the export attribute. Currently, the
supported export attribute is <code>Userdata</code>. This exports a user
data script that includes parameters and values provided in the
<code>InputAttributes</code> list.</p></td>
</tr>
<tr class="even">
<td><code
id="opsworkscm_export_server_engine_attribute_:_ServerName">ServerName</code></td>
<td><p>[required] The name of the server from which you are exporting
the attribute.</p></td>
</tr>
<tr class="odd">
<td><code
id="opsworkscm_export_server_engine_attribute_:_InputAttributes">InputAttributes</code></td>
<td><p>The list of engine attributes. The list type is
<code>EngineAttribute</code>. An <code>EngineAttribute</code> list item
is a pair that includes an attribute name and its value. For the
<code>Userdata</code> ExportAttributeName, the following are supported
engine attribute names.</p>
<ul>
<li><p><strong>RunList</strong> In Chef, a list of roles or recipes that
are run in the specified order. In Puppet, this parameter is
ignored.</p></li>
<li><p><strong>OrganizationName</strong> In Chef, an organization name.
AWS OpsWorks for Chef Automate always creates the organization
<code>default</code>. In Puppet, this parameter is ignored.</p></li>
<li><p><strong>NodeEnvironment</strong> In Chef, a node environment (for
example, development, staging, or one-box). In Puppet, this parameter is
ignored.</p></li>
<li><p><strong>NodeClientVersion</strong> In Chef, the version of the
Chef engine (three numbers separated by dots, such as 13.8.5). If this
attribute is empty, OpsWorks for Chef Automate uses the most current
version. In Puppet, this parameter is ignored.</p></li>
</ul></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      EngineAttribute = list(
        Name = "string",
        Value = "string"
      ),
      ServerName = "string"
    )

### Request syntax

    svc$export_server_engine_attribute(
      ExportAttributeName = "string",
      ServerName = "string",
      InputAttributes = list(
        list(
          Name = "string",
          Value = "string"
        )
      )
    )
