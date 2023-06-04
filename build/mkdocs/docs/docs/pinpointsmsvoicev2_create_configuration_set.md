<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>pinpointsmsvoicev2_create_configuration_set</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new configuration set

### Description

Creates a new configuration set. After you create the configuration set,
you can add one or more event destinations to it.

A configuration set is a set of rules that you apply to the SMS and
voice messages that you send.

When you send a message, you can optionally specify a single
configuration set.

### Usage

    pinpointsmsvoicev2_create_configuration_set(ConfigurationSetName, Tags,
      ClientToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="pinpointsmsvoicev2_create_configuration_set_:_ConfigurationSetName">ConfigurationSetName</code></td>
<td><p>[required] The name to use for the new configuration
set.</p></td>
</tr>
<tr class="even">
<td><code
id="pinpointsmsvoicev2_create_configuration_set_:_Tags">Tags</code></td>
<td><p>An array of key and value pair tags that's associated with the
new configuration set.</p></td>
</tr>
<tr class="odd">
<td><code
id="pinpointsmsvoicev2_create_configuration_set_:_ClientToken">ClientToken</code></td>
<td><p>Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. If you don't specify a client token, a
randomly generated token is used for the request to ensure
idempotency.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ConfigurationSetArn = "string",
      ConfigurationSetName = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      ),
      CreatedTimestamp = as.POSIXct(
        "2015-01-01"
      )
    )

### Request syntax

    svc$create_configuration_set(
      ConfigurationSetName = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      ),
      ClientToken = "string"
    )
