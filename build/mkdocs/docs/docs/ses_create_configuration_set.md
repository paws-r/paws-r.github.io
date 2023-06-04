<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ses_create_configuration_set</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a configuration set

### Description

Creates a configuration set.

Configuration sets enable you to publish email sending events. For
information about using configuration sets, see the [Amazon SES
Developer
Guide](https://docs.aws.amazon.com/ses/latest/dg/monitor-sending-activity.html).

You can execute this operation no more than once per second.

### Usage

    ses_create_configuration_set(ConfigurationSet)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ses_create_configuration_set_:_ConfigurationSet">ConfigurationSet</code></td>
<td><p>[required] A data structure that contains the name of the
configuration set.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$create_configuration_set(
      ConfigurationSet = list(
        Name = "string"
      )
    )
