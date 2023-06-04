<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>pinpointsmsvoicev2_create_opt_out_list</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new opt-out list

### Description

Creates a new opt-out list.

If the opt-out list name already exists, an Error is returned.

An opt-out list is a list of phone numbers that are opted out, meaning
you can't send SMS or voice messages to them. If end user replies with
the keyword "STOP," an entry for the phone number is added to the
opt-out list. In addition to STOP, your recipients can use any supported
opt-out keyword, such as CANCEL or OPTOUT. For a list of supported
opt-out keywords, see [SMS opt
out](https://docs.aws.amazon.com/pinpoint/latest/userguide/channels-sms-manage.html#channels-sms-manage-optout)
in the *Amazon Pinpoint User Guide*.

### Usage

    pinpointsmsvoicev2_create_opt_out_list(OptOutListName, Tags,
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
id="pinpointsmsvoicev2_create_opt_out_list_:_OptOutListName">OptOutListName</code></td>
<td><p>[required] The name of the new OptOutList.</p></td>
</tr>
<tr class="even">
<td><code
id="pinpointsmsvoicev2_create_opt_out_list_:_Tags">Tags</code></td>
<td><p>An array of tags (key and value pairs) to associate with the new
OptOutList.</p></td>
</tr>
<tr class="odd">
<td><code
id="pinpointsmsvoicev2_create_opt_out_list_:_ClientToken">ClientToken</code></td>
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
      OptOutListArn = "string",
      OptOutListName = "string",
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

    svc$create_opt_out_list(
      OptOutListName = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      ),
      ClientToken = "string"
    )
