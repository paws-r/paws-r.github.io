<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssmcontacts_create_contact</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Contacts are either the contacts that Incident Manager engages during an incident or the escalation plans that Incident Manager uses to engage contacts in phases during an incident

### Description

Contacts are either the contacts that Incident Manager engages during an
incident or the escalation plans that Incident Manager uses to engage
contacts in phases during an incident.

### Usage

    ssmcontacts_create_contact(Alias, DisplayName, Type, Plan, Tags,
      IdempotencyToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ssmcontacts_create_contact_:_Alias">Alias</code></td>
<td><p>[required] The short name to quickly identify a contact or
escalation plan. The contact alias must be unique and
identifiable.</p></td>
</tr>
<tr class="even">
<td><code
id="ssmcontacts_create_contact_:_DisplayName">DisplayName</code></td>
<td><p>The full name of the contact or escalation plan.</p></td>
</tr>
<tr class="odd">
<td><code id="ssmcontacts_create_contact_:_Type">Type</code></td>
<td><p>[required] To create an escalation plan use
<code>ESCALATION</code>. To create a contact use
<code>PERSONAL</code>.</p></td>
</tr>
<tr class="even">
<td><code id="ssmcontacts_create_contact_:_Plan">Plan</code></td>
<td><p>[required] A list of stages. A contact has an engagement plan
with stages that contact specified contact channels. An escalation plan
uses stages that contact specified contacts.</p></td>
</tr>
<tr class="odd">
<td><code id="ssmcontacts_create_contact_:_Tags">Tags</code></td>
<td><p>Adds a tag to the target. You can only tag resources created in
the first Region of your replication set.</p></td>
</tr>
<tr class="even">
<td><code
id="ssmcontacts_create_contact_:_IdempotencyToken">IdempotencyToken</code></td>
<td><p>A token ensuring that the operation is called only once with the
specified details.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ContactArn = "string"
    )

### Request syntax

    svc$create_contact(
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
      ),
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      ),
      IdempotencyToken = "string"
    )
