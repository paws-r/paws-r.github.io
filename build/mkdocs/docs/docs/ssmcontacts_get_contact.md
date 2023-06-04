<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssmcontacts_get_contact</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves information about the specified contact or escalation plan

### Description

Retrieves information about the specified contact or escalation plan.

### Usage

    ssmcontacts_get_contact(ContactId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ssmcontacts_get_contact_:_ContactId">ContactId</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the contact or
escalation plan.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ContactArn = "string",
      Alias = "string",
      DisplayName = "string",
      Type = "PERSONAL"|"ESCALATION"|"ONCALL_SCHEDULE",
      Plan = list(
        Stages = list(
          list(
            DurationInMinutes = 123,
            Targets = list(
              list(
                ChannelTargetInfo = list(
                  ContactChannelId = "string",
                  RetryIntervalInMinutes = 123
                ),
                ContactTargetInfo = list(
                  ContactId = "string",
                  IsEssential = TRUE|FALSE
                )
              )
            )
          )
        ),
        RotationIds = list(
          "string"
        )
      )
    )

### Request syntax

    svc$get_contact(
      ContactId = "string"
    )
