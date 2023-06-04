<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ses_update_configuration_set_sending_enabled</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Enables or disables email sending for messages sent using a specific configuration set in a given AWS Region

### Description

Enables or disables email sending for messages sent using a specific
configuration set in a given AWS Region. You can use this operation in
conjunction with Amazon CloudWatch alarms to temporarily pause email
sending for a configuration set when the reputation metrics for that
configuration set (such as your bounce on complaint rate) exceed certain
thresholds.

You can execute this operation no more than once per second.

### Usage

    ses_update_configuration_set_sending_enabled(ConfigurationSetName,
      Enabled)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ses_update_configuration_set_sending_enabled_:_ConfigurationSetName">ConfigurationSetName</code></td>
<td><p>[required] The name of the configuration set that you want to
update.</p></td>
</tr>
<tr class="even">
<td><code
id="ses_update_configuration_set_sending_enabled_:_Enabled">Enabled</code></td>
<td><p>[required] Describes whether email sending is enabled or disabled
for the configuration set.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_configuration_set_sending_enabled(
      ConfigurationSetName = "string",
      Enabled = TRUE|FALSE
    )

### Examples

    ## Not run: 
    # Set the sending enabled flag for a specific configuration set.
    svc$update_configuration_set_sending_enabled(
      ConfigurationSetName = "foo",
      Enabled = TRUE
    )

    ## End(Not run)
