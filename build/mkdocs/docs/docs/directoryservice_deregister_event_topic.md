<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>directoryservice_deregister_event_topic</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes the specified directory as a publisher to the specified Amazon SNS topic

### Description

Removes the specified directory as a publisher to the specified Amazon
SNS topic.

### Usage

    directoryservice_deregister_event_topic(DirectoryId, TopicName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="directoryservice_deregister_event_topic_:_DirectoryId">DirectoryId</code></td>
<td><p>[required] The Directory ID to remove as a publisher. This
directory will no longer send messages to the specified Amazon SNS
topic.</p></td>
</tr>
<tr class="even">
<td><code
id="directoryservice_deregister_event_topic_:_TopicName">TopicName</code></td>
<td><p>[required] The name of the Amazon SNS topic from which to remove
the directory as a publisher.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$deregister_event_topic(
      DirectoryId = "string",
      TopicName = "string"
    )
