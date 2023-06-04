<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>directoryservice_register_event_topic</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Associates a directory with an Amazon SNS topic

### Description

Associates a directory with an Amazon SNS topic. This establishes the
directory as a publisher to the specified Amazon SNS topic. You can then
receive email or text (SMS) messages when the status of your directory
changes. You get notified if your directory goes from an Active status
to an Impaired or Inoperable status. You also receive a notification
when the directory returns to an Active status.

### Usage

    directoryservice_register_event_topic(DirectoryId, TopicName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="directoryservice_register_event_topic_:_DirectoryId">DirectoryId</code></td>
<td><p>[required] The Directory ID that will publish status messages to
the Amazon SNS topic.</p></td>
</tr>
<tr class="even">
<td><code
id="directoryservice_register_event_topic_:_TopicName">TopicName</code></td>
<td><p>[required] The Amazon SNS topic name to which the directory will
publish status messages. This Amazon SNS topic must be in the same
region as the specified Directory ID.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$register_event_topic(
      DirectoryId = "string",
      TopicName = "string"
    )
