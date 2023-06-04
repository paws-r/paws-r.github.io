<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sesv2_delete_configuration_set</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Delete an existing configuration set

### Description

Delete an existing configuration set.

*Configuration sets* are groups of rules that you can apply to the
emails you send. You apply a configuration set to an email by including
a reference to the configuration set in the headers of the email. When
you apply a configuration set to an email, all of the rules in that
configuration set are applied to the email.

### Usage

    sesv2_delete_configuration_set(ConfigurationSetName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sesv2_delete_configuration_set_:_ConfigurationSetName">ConfigurationSetName</code></td>
<td><p>[required] The name of the configuration set.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_configuration_set(
      ConfigurationSetName = "string"
    )
