<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssmcontacts_accept_page</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Used to acknowledge an engagement to a contact channel during an incident

### Description

Used to acknowledge an engagement to a contact channel during an
incident.

### Usage

    ssmcontacts_accept_page(PageId, ContactChannelId, AcceptType, Note,
      AcceptCode, AcceptCodeValidation)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ssmcontacts_accept_page_:_PageId">PageId</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the engagement to a
contact channel.</p></td>
</tr>
<tr class="even">
<td><code
id="ssmcontacts_accept_page_:_ContactChannelId">ContactChannelId</code></td>
<td><p>The ARN of the contact channel.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssmcontacts_accept_page_:_AcceptType">AcceptType</code></td>
<td><p>[required] The type indicates if the page was
<code>DELIVERED</code> or <code>READ</code>.</p></td>
</tr>
<tr class="even">
<td><code id="ssmcontacts_accept_page_:_Note">Note</code></td>
<td><p>Information provided by the user when the user acknowledges the
page.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssmcontacts_accept_page_:_AcceptCode">AcceptCode</code></td>
<td><p>[required] A 6-digit code used to acknowledge the page.</p></td>
</tr>
<tr class="even">
<td><code
id="ssmcontacts_accept_page_:_AcceptCodeValidation">AcceptCodeValidation</code></td>
<td><p>An optional field that Incident Manager uses to
<code>ENFORCE</code> <code>AcceptCode</code> validation when
acknowledging an page. Acknowledgement can occur by replying to a page,
or when entering the AcceptCode in the console. Enforcing AcceptCode
validation causes Incident Manager to verify that the code entered by
the user matches the code sent by Incident Manager with the page.</p>
<p>Incident Manager can also <code>IGNORE</code> <code>AcceptCode</code>
validation. Ignoring <code>AcceptCode</code> validation causes Incident
Manager to accept any value entered for the
<code>AcceptCode</code>.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$accept_page(
      PageId = "string",
      ContactChannelId = "string",
      AcceptType = "DELIVERED"|"READ",
      Note = "string",
      AcceptCode = "string",
      AcceptCodeValidation = "IGNORE"|"ENFORCE"
    )
