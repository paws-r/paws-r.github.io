<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sesv2_list_contacts</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the contacts present in a specific contact list

### Description

Lists the contacts present in a specific contact list.

### Usage

    sesv2_list_contacts(ContactListName, Filter, PageSize, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sesv2_list_contacts_:_ContactListName">ContactListName</code></td>
<td><p>[required] The name of the contact list.</p></td>
</tr>
<tr class="even">
<td><code id="sesv2_list_contacts_:_Filter">Filter</code></td>
<td><p>A filter that can be applied to a list of contacts.</p></td>
</tr>
<tr class="odd">
<td><code id="sesv2_list_contacts_:_PageSize">PageSize</code></td>
<td><p>The number of contacts that may be returned at once, which is
dependent on if there are more or less contacts than the value of the
PageSize. Use this parameter to paginate results. If additional contacts
exist beyond the specified limit, the <code>NextToken</code> element is
sent in the response. Use the <code>NextToken</code> value in subsequent
requests to retrieve additional contacts.</p></td>
</tr>
<tr class="even">
<td><code id="sesv2_list_contacts_:_NextToken">NextToken</code></td>
<td><p>A string token indicating that there might be additional contacts
available to be listed. Use the token provided in the Response to use in
the subsequent call to ListContacts with the same parameters to retrieve
the next page of contacts.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Contacts = list(
        list(
          EmailAddress = "string",
          TopicPreferences = list(
            list(
              TopicName = "string",
              SubscriptionStatus = "OPT_IN"|"OPT_OUT"
            )
          ),
          TopicDefaultPreferences = list(
            list(
              TopicName = "string",
              SubscriptionStatus = "OPT_IN"|"OPT_OUT"
            )
          ),
          UnsubscribeAll = TRUE|FALSE,
          LastUpdatedTimestamp = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_contacts(
      ContactListName = "string",
      Filter = list(
        FilteredStatus = "OPT_IN"|"OPT_OUT",
        TopicFilter = list(
          TopicName = "string",
          UseDefaultIfPreferenceUnavailable = TRUE|FALSE
        )
      ),
      PageSize = 123,
      NextToken = "string"
    )
