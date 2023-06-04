<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>directoryservice_describe_event_topics</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Obtains information about which Amazon SNS topics receive status messages from the specified directory

### Description

Obtains information about which Amazon SNS topics receive status
messages from the specified directory.

If no input parameters are provided, such as DirectoryId or TopicName,
this request describes all of the associations in the account.

### Usage

    directoryservice_describe_event_topics(DirectoryId, TopicNames)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="directoryservice_describe_event_topics_:_DirectoryId">DirectoryId</code></td>
<td><p>The Directory ID for which to get the list of associated Amazon
SNS topics. If this member is null, associations for all Directory IDs
are returned.</p></td>
</tr>
<tr class="even">
<td><code
id="directoryservice_describe_event_topics_:_TopicNames">TopicNames</code></td>
<td><p>A list of Amazon SNS topic names for which to obtain the
information. If this member is null, all associations for the specified
Directory ID are returned.</p>
<p>An empty list results in an <code>InvalidParameterException</code>
being thrown.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      EventTopics = list(
        list(
          DirectoryId = "string",
          TopicName = "string",
          TopicArn = "string",
          CreatedDateTime = as.POSIXct(
            "2015-01-01"
          ),
          Status = "Registered"|"Topic not found"|"Failed"|"Deleted"
        )
      )
    )

### Request syntax

    svc$describe_event_topics(
      DirectoryId = "string",
      TopicNames = list(
        "string"
      )
    )
