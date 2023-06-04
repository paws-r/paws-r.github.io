<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>emr_describe_security_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Provides the details of a security configuration by returning the configuration JSON

### Description

Provides the details of a security configuration by returning the
configuration JSON.

### Usage

    emr_describe_security_configuration(Name)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="emr_describe_security_configuration_:_Name">Name</code></td>
<td><p>[required] The name of the security configuration.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Name = "string",
      SecurityConfiguration = "string",
      CreationDateTime = as.POSIXct(
        "2015-01-01"
      )
    )

### Request syntax

    svc$describe_security_configuration(
      Name = "string"
    )
