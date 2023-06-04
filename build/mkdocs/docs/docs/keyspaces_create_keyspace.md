<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>keyspaces_create_keyspace</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## The CreateKeyspace operation adds a new keyspace to your account

### Description

The `create_keyspace` operation adds a new keyspace to your account. In
an Amazon Web Services account, keyspace names must be unique within
each Region.

`create_keyspace` is an asynchronous operation. You can monitor the
creation status of the new keyspace by using the `get_keyspace`
operation.

For more information, see [Creating
keyspaces](https://docs.aws.amazon.com/keyspaces/latest/devguide/working-with-keyspaces.html#keyspaces-create)
in the *Amazon Keyspaces Developer Guide*.

### Usage

    keyspaces_create_keyspace(keyspaceName, tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="keyspaces_create_keyspace_:_keyspaceName">keyspaceName</code></td>
<td><p>[required] The name of the keyspace to be created.</p></td>
</tr>
<tr class="even">
<td><code id="keyspaces_create_keyspace_:_tags">tags</code></td>
<td><p>A list of key-value pair tags to be attached to the keyspace.</p>
<p>For more information, see <a
href="https://docs.aws.amazon.com/keyspaces/latest/devguide/tagging-keyspaces.html">Adding
tags and labels to Amazon Keyspaces resources</a> in the <em>Amazon
Keyspaces Developer Guide</em>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      resourceArn = "string"
    )

### Request syntax

    svc$create_keyspace(
      keyspaceName = "string",
      tags = list(
        list(
          key = "string",
          value = "string"
        )
      )
    )
