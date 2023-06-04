<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssmcontacts_create_contact_channel</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## A contact channel is the method that Incident Manager uses to engage your contact

### Description

A contact channel is the method that Incident Manager uses to engage
your contact.

### Usage

    ssmcontacts_create_contact_channel(ContactId, Name, Type,
      DeliveryAddress, DeferActivation, IdempotencyToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ssmcontacts_create_contact_channel_:_ContactId">ContactId</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the contact you are
adding the contact channel to.</p></td>
</tr>
<tr class="even">
<td><code
id="ssmcontacts_create_contact_channel_:_Name">Name</code></td>
<td><p>[required] The name of the contact channel.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssmcontacts_create_contact_channel_:_Type">Type</code></td>
<td><p>[required] Incident Manager supports three types of contact
channels:</p>
<ul>
<li><p><code>SMS</code></p></li>
<li><p><code>VOICE</code></p></li>
<li><p><code>EMAIL</code></p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="ssmcontacts_create_contact_channel_:_DeliveryAddress">DeliveryAddress</code></td>
<td><p>[required] The details that Incident Manager uses when trying to
engage the contact channel. The format is dependent on the type of the
contact channel. The following are the expected formats:</p>
<ul>
<li><p>SMS - '+' followed by the country code and phone number</p></li>
<li><p>VOICE - '+' followed by the country code and phone
number</p></li>
<li><p>EMAIL - any standard email format</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="ssmcontacts_create_contact_channel_:_DeferActivation">DeferActivation</code></td>
<td><p>If you want to activate the channel at a later time, you can
choose to defer activation. Incident Manager can't engage your contact
channel until it has been activated.</p></td>
</tr>
<tr class="even">
<td><code
id="ssmcontacts_create_contact_channel_:_IdempotencyToken">IdempotencyToken</code></td>
<td><p>A token ensuring that the operation is called only once with the
specified details.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ContactChannelArn = "string"
    )

### Request syntax

    svc$create_contact_channel(
      ContactId = "string",
      Name = "string",
      Type = "SMS"|"VOICE"|"EMAIL",
      DeliveryAddress = list(
        SimpleAddress = "string"
      ),
      DeferActivation = TRUE|FALSE,
      IdempotencyToken = "string"
    )
