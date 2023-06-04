<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>emr_create_security_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a security configuration, which is stored in the service and can be specified when a cluster is created

### Description

Creates a security configuration, which is stored in the service and can
be specified when a cluster is created.

### Usage

    emr_create_security_configuration(Name, SecurityConfiguration)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="emr_create_security_configuration_:_Name">Name</code></td>
<td><p>[required] The name of the security configuration.</p></td>
</tr>
<tr class="even">
<td><code
id="emr_create_security_configuration_:_SecurityConfiguration">SecurityConfiguration</code></td>
<td><p>[required] The security configuration details in JSON format. For
JSON parameters and examples, see <a
href="https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-security-configurations.html">Use
Security Configurations to Set Up Cluster Security</a> in the <em>Amazon
EMR Management Guide</em>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Name = "string",
      CreationDateTime = as.POSIXct(
        "2015-01-01"
      )
    )

### Request syntax

    svc$create_security_configuration(
      Name = "string",
      SecurityConfiguration = "string"
    )
