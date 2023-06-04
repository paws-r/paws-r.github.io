<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>eventbridge_list_event_sources</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## You can use this to see all the partner event sources that have been shared with your Amazon Web Services account

### Description

You can use this to see all the partner event sources that have been
shared with your Amazon Web Services account. For more information about
partner event sources, see `create_event_bus`.

### Usage

    eventbridge_list_event_sources(NamePrefix, NextToken, Limit)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="eventbridge_list_event_sources_:_NamePrefix">NamePrefix</code></td>
<td><p>Specifying this limits the results to only those partner event
sources with names that start with the specified prefix.</p></td>
</tr>
<tr class="even">
<td><code
id="eventbridge_list_event_sources_:_NextToken">NextToken</code></td>
<td><p>The token returned by a previous call to retrieve the next set of
results.</p></td>
</tr>
<tr class="odd">
<td><code id="eventbridge_list_event_sources_:_Limit">Limit</code></td>
<td><p>Specifying this limits the number of results returned by this
operation. The operation also returns a NextToken which you can use in a
subsequent operation to retrieve the next set of results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      EventSources = list(
        list(
          Arn = "string",
          CreatedBy = "string",
          CreationTime = as.POSIXct(
            "2015-01-01"
          ),
          ExpirationTime = as.POSIXct(
            "2015-01-01"
          ),
          Name = "string",
          State = "PENDING"|"ACTIVE"|"DELETED"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_event_sources(
      NamePrefix = "string",
      NextToken = "string",
      Limit = 123
    )
