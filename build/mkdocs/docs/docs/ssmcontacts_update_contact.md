<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssmcontacts_update_contact</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the contact or escalation plan specified

### Description

Updates the contact or escalation plan specified.

### Usage

    ssmcontacts_update_contact(ContactId, DisplayName, Plan)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ssmcontacts_update_contact_:_ContactId">ContactId</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the contact or
escalation plan you're updating.</p></td>
</tr>
<tr class="even">
<td><code
id="ssmcontacts_update_contact_:_DisplayName">DisplayName</code></td>
<td><p>The full name of the contact or escalation plan.</p></td>
</tr>
<tr class="odd">
<td><code id="ssmcontacts_update_contact_:_Plan">Plan</code></td>
<td><p>A list of stages. A contact has an engagement plan with stages
for specified contact channels. An escalation plan uses these stages to
contact specified contacts.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_contact(
      ContactId = "string",
      DisplayName = "string",
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
