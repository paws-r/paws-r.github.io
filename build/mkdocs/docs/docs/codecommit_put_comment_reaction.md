<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codecommit_put_comment_reaction</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds or updates a reaction to a specified comment for the user whose identity is used to make the request

### Description

Adds or updates a reaction to a specified comment for the user whose
identity is used to make the request. You can only add or update a
reaction for yourself. You cannot add, modify, or delete a reaction for
another user.

### Usage

    codecommit_put_comment_reaction(commentId, reactionValue)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codecommit_put_comment_reaction_:_commentId">commentId</code></td>
<td><p>[required] The ID of the comment to which you want to add or
update a reaction.</p></td>
</tr>
<tr class="even">
<td><code
id="codecommit_put_comment_reaction_:_reactionValue">reactionValue</code></td>
<td><p>[required] The emoji reaction you want to add or update. To
remove a reaction, provide a value of blank or null. You can also
provide the value of none. For information about emoji reaction values
supported in AWS CodeCommit, see the <a
href="https://docs.aws.amazon.com/codecommit/latest/userguide/how-to-commit-comment.html#emoji-reaction-table">AWS
CodeCommit User Guide</a>.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$put_comment_reaction(
      commentId = "string",
      reactionValue = "string"
    )
