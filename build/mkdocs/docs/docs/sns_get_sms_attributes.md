<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sns_get_sms_attributes</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the settings for sending SMS messages from your Amazon Web Services account

### Description

Returns the settings for sending SMS messages from your Amazon Web
Services account.

These settings are set with the `set_sms_attributes` action.

### Usage

    sns_get_sms_attributes(attributes)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sns_get_sms_attributes_:_attributes">attributes</code></td>
<td><p>A list of the individual attribute names, such as
<code>MonthlySpendLimit</code>, for which you want values.</p>
<p>For all attribute names, see <code>set_sms_attributes</code>.</p>
<p>If you don't use this parameter, Amazon SNS returns all SMS
attributes.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      attributes = list(
        "string"
      )
    )

### Request syntax

    svc$get_sms_attributes(
      attributes = list(
        "string"
      )
    )
