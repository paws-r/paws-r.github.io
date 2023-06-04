<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lexmodelsv2_update_intent</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the settings for an intent

### Description

Updates the settings for an intent.

### Usage

    lexmodelsv2_update_intent(intentId, intentName, description,
      parentIntentSignature, sampleUtterances, dialogCodeHook,
      fulfillmentCodeHook, slotPriorities, intentConfirmationSetting,
      intentClosingSetting, inputContexts, outputContexts,
      kendraConfiguration, botId, botVersion, localeId,
      initialResponseSetting)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="lexmodelsv2_update_intent_:_intentId">intentId</code></td>
<td><p>[required] The unique identifier of the intent to
update.</p></td>
</tr>
<tr class="even">
<td><code
id="lexmodelsv2_update_intent_:_intentName">intentName</code></td>
<td><p>[required] The new name for the intent.</p></td>
</tr>
<tr class="odd">
<td><code
id="lexmodelsv2_update_intent_:_description">description</code></td>
<td><p>The new description of the intent.</p></td>
</tr>
<tr class="even">
<td><code
id="lexmodelsv2_update_intent_:_parentIntentSignature">parentIntentSignature</code></td>
<td><p>The signature of the new built-in intent to use as the parent of
this intent.</p></td>
</tr>
<tr class="odd">
<td><code
id="lexmodelsv2_update_intent_:_sampleUtterances">sampleUtterances</code></td>
<td><p>New utterances used to invoke the intent.</p></td>
</tr>
<tr class="even">
<td><code
id="lexmodelsv2_update_intent_:_dialogCodeHook">dialogCodeHook</code></td>
<td><p>The new Lambda function to use between each turn of the
conversation with the bot.</p></td>
</tr>
<tr class="odd">
<td><code
id="lexmodelsv2_update_intent_:_fulfillmentCodeHook">fulfillmentCodeHook</code></td>
<td><p>The new Lambda function to call when all of the intents required
slots are provided and the intent is ready for fulfillment.</p></td>
</tr>
<tr class="even">
<td><code
id="lexmodelsv2_update_intent_:_slotPriorities">slotPriorities</code></td>
<td><p>A new list of slots and their priorities that are contained by
the intent.</p></td>
</tr>
<tr class="odd">
<td><code
id="lexmodelsv2_update_intent_:_intentConfirmationSetting">intentConfirmationSetting</code></td>
<td><p>New prompts that Amazon Lex sends to the user to confirm the
completion of an intent.</p></td>
</tr>
<tr class="even">
<td><code
id="lexmodelsv2_update_intent_:_intentClosingSetting">intentClosingSetting</code></td>
<td><p>The new response that Amazon Lex sends the user when the intent
is closed.</p></td>
</tr>
<tr class="odd">
<td><code
id="lexmodelsv2_update_intent_:_inputContexts">inputContexts</code></td>
<td><p>A new list of contexts that must be active in order for Amazon
Lex to consider the intent.</p></td>
</tr>
<tr class="even">
<td><code
id="lexmodelsv2_update_intent_:_outputContexts">outputContexts</code></td>
<td><p>A new list of contexts that Amazon Lex activates when the intent
is fulfilled.</p></td>
</tr>
<tr class="odd">
<td><code
id="lexmodelsv2_update_intent_:_kendraConfiguration">kendraConfiguration</code></td>
<td><p>New configuration settings for connecting to an Amazon Kendra
index.</p></td>
</tr>
<tr class="even">
<td><code id="lexmodelsv2_update_intent_:_botId">botId</code></td>
<td><p>[required] The identifier of the bot that contains the
intent.</p></td>
</tr>
<tr class="odd">
<td><code
id="lexmodelsv2_update_intent_:_botVersion">botVersion</code></td>
<td><p>[required] The version of the bot that contains the intent. Must
be <code>DRAFT</code>.</p></td>
</tr>
<tr class="even">
<td><code id="lexmodelsv2_update_intent_:_localeId">localeId</code></td>
<td><p>[required] The identifier of the language and locale where this
intent is used. The string must match one of the supported locales. For
more information, see <a
href="https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html">Supported
languages</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="lexmodelsv2_update_intent_:_initialResponseSetting">initialResponseSetting</code></td>
<td></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      intentId = "string",
      intentName = "string",
      description = "string",
      parentIntentSignature = "string",
      sampleUtterances = list(
        list(
          utterance = "string"
        )
      ),
      dialogCodeHook = list(
        enabled = TRUE|FALSE
      ),
      fulfillmentCodeHook = list(
        enabled = TRUE|FALSE,
        postFulfillmentStatusSpecification = list(
          successResponse = list(
            messageGroups = list(
              list(
                message = list(
                  plainTextMessage = list(
                    value = "string"
                  ),
                  customPayload = list(
                    value = "string"
                  ),
                  ssmlMessage = list(
                    value = "string"
                  ),
                  imageResponseCard = list(
                    title = "string",
                    subtitle = "string",
                    imageUrl = "string",
                    buttons = list(
                      list(
                        text = "string",
                        value = "string"
                      )
                    )
                  )
                ),
                variations = list(
                  list(
                    plainTextMessage = list(
                      value = "string"
                    ),
                    customPayload = list(
                      value = "string"
                    ),
                    ssmlMessage = list(
                      value = "string"
                    ),
                    imageResponseCard = list(
                      title = "string",
                      subtitle = "string",
                      imageUrl = "string",
                      buttons = list(
                        list(
                          text = "string",
                          value = "string"
                        )
                      )
                    )
                  )
                )
              )
            ),
            allowInterrupt = TRUE|FALSE
          ),
          failureResponse = list(
            messageGroups = list(
              list(
                message = list(
                  plainTextMessage = list(
                    value = "string"
                  ),
                  customPayload = list(
                    value = "string"
                  ),
                  ssmlMessage = list(
                    value = "string"
                  ),
                  imageResponseCard = list(
                    title = "string",
                    subtitle = "string",
                    imageUrl = "string",
                    buttons = list(
                      list(
                        text = "string",
                        value = "string"
                      )
                    )
                  )
                ),
                variations = list(
                  list(
                    plainTextMessage = list(
                      value = "string"
                    ),
                    customPayload = list(
                      value = "string"
                    ),
                    ssmlMessage = list(
                      value = "string"
                    ),
                    imageResponseCard = list(
                      title = "string",
                      subtitle = "string",
                      imageUrl = "string",
                      buttons = list(
                        list(
                          text = "string",
                          value = "string"
                        )
                      )
                    )
                  )
                )
              )
            ),
            allowInterrupt = TRUE|FALSE
          ),
          timeoutResponse = list(
            messageGroups = list(
              list(
                message = list(
                  plainTextMessage = list(
                    value = "string"
                  ),
                  customPayload = list(
                    value = "string"
                  ),
                  ssmlMessage = list(
                    value = "string"
                  ),
                  imageResponseCard = list(
                    title = "string",
                    subtitle = "string",
                    imageUrl = "string",
                    buttons = list(
                      list(
                        text = "string",
                        value = "string"
                      )
                    )
                  )
                ),
                variations = list(
                  list(
                    plainTextMessage = list(
                      value = "string"
                    ),
                    customPayload = list(
                      value = "string"
                    ),
                    ssmlMessage = list(
                      value = "string"
                    ),
                    imageResponseCard = list(
                      title = "string",
                      subtitle = "string",
                      imageUrl = "string",
                      buttons = list(
                        list(
                          text = "string",
                          value = "string"
                        )
                      )
                    )
                  )
                )
              )
            ),
            allowInterrupt = TRUE|FALSE
          ),
          successNextStep = list(
            dialogAction = list(
              type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
              slotToElicit = "string",
              suppressNextMessage = TRUE|FALSE
            ),
            intent = list(
              name = "string",
              slots = list(
                list(
                  shape = "Scalar"|"List",
                  value = list(
                    interpretedValue = "string"
                  ),
                  values = list(
                    list()
                  )
                )
              )
            ),
            sessionAttributes = list(
              "string"
            )
          ),
          successConditional = list(
            active = TRUE|FALSE,
            conditionalBranches = list(
              list(
                name = "string",
                condition = list(
                  expressionString = "string"
                ),
                nextStep = list(
                  dialogAction = list(
                    type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
                    slotToElicit = "string",
                    suppressNextMessage = TRUE|FALSE
                  ),
                  intent = list(
                    name = "string",
                    slots = list(
                      list(
                        shape = "Scalar"|"List",
                        value = list(
                          interpretedValue = "string"
                        ),
                        values = list(
                          list()
                        )
                      )
                    )
                  ),
                  sessionAttributes = list(
                    "string"
                  )
                ),
                response = list(
                  messageGroups = list(
                    list(
                      message = list(
                        plainTextMessage = list(
                          value = "string"
                        ),
                        customPayload = list(
                          value = "string"
                        ),
                        ssmlMessage = list(
                          value = "string"
                        ),
                        imageResponseCard = list(
                          title = "string",
                          subtitle = "string",
                          imageUrl = "string",
                          buttons = list(
                            list(
                              text = "string",
                              value = "string"
                            )
                          )
                        )
                      ),
                      variations = list(
                        list(
                          plainTextMessage = list(
                            value = "string"
                          ),
                          customPayload = list(
                            value = "string"
                          ),
                          ssmlMessage = list(
                            value = "string"
                          ),
                          imageResponseCard = list(
                            title = "string",
                            subtitle = "string",
                            imageUrl = "string",
                            buttons = list(
                              list(
                                text = "string",
                                value = "string"
                              )
                            )
                          )
                        )
                      )
                    )
                  ),
                  allowInterrupt = TRUE|FALSE
                )
              )
            ),
            defaultBranch = list(
              nextStep = list(
                dialogAction = list(
                  type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
                  slotToElicit = "string",
                  suppressNextMessage = TRUE|FALSE
                ),
                intent = list(
                  name = "string",
                  slots = list(
                    list(
                      shape = "Scalar"|"List",
                      value = list(
                        interpretedValue = "string"
                      ),
                      values = list(
                        list()
                      )
                    )
                  )
                ),
                sessionAttributes = list(
                  "string"
                )
              ),
              response = list(
                messageGroups = list(
                  list(
                    message = list(
                      plainTextMessage = list(
                        value = "string"
                      ),
                      customPayload = list(
                        value = "string"
                      ),
                      ssmlMessage = list(
                        value = "string"
                      ),
                      imageResponseCard = list(
                        title = "string",
                        subtitle = "string",
                        imageUrl = "string",
                        buttons = list(
                          list(
                            text = "string",
                            value = "string"
                          )
                        )
                      )
                    ),
                    variations = list(
                      list(
                        plainTextMessage = list(
                          value = "string"
                        ),
                        customPayload = list(
                          value = "string"
                        ),
                        ssmlMessage = list(
                          value = "string"
                        ),
                        imageResponseCard = list(
                          title = "string",
                          subtitle = "string",
                          imageUrl = "string",
                          buttons = list(
                            list(
                              text = "string",
                              value = "string"
                            )
                          )
                        )
                      )
                    )
                  )
                ),
                allowInterrupt = TRUE|FALSE
              )
            )
          ),
          failureNextStep = list(
            dialogAction = list(
              type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
              slotToElicit = "string",
              suppressNextMessage = TRUE|FALSE
            ),
            intent = list(
              name = "string",
              slots = list(
                list(
                  shape = "Scalar"|"List",
                  value = list(
                    interpretedValue = "string"
                  ),
                  values = list(
                    list()
                  )
                )
              )
            ),
            sessionAttributes = list(
              "string"
            )
          ),
          failureConditional = list(
            active = TRUE|FALSE,
            conditionalBranches = list(
              list(
                name = "string",
                condition = list(
                  expressionString = "string"
                ),
                nextStep = list(
                  dialogAction = list(
                    type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
                    slotToElicit = "string",
                    suppressNextMessage = TRUE|FALSE
                  ),
                  intent = list(
                    name = "string",
                    slots = list(
                      list(
                        shape = "Scalar"|"List",
                        value = list(
                          interpretedValue = "string"
                        ),
                        values = list(
                          list()
                        )
                      )
                    )
                  ),
                  sessionAttributes = list(
                    "string"
                  )
                ),
                response = list(
                  messageGroups = list(
                    list(
                      message = list(
                        plainTextMessage = list(
                          value = "string"
                        ),
                        customPayload = list(
                          value = "string"
                        ),
                        ssmlMessage = list(
                          value = "string"
                        ),
                        imageResponseCard = list(
                          title = "string",
                          subtitle = "string",
                          imageUrl = "string",
                          buttons = list(
                            list(
                              text = "string",
                              value = "string"
                            )
                          )
                        )
                      ),
                      variations = list(
                        list(
                          plainTextMessage = list(
                            value = "string"
                          ),
                          customPayload = list(
                            value = "string"
                          ),
                          ssmlMessage = list(
                            value = "string"
                          ),
                          imageResponseCard = list(
                            title = "string",
                            subtitle = "string",
                            imageUrl = "string",
                            buttons = list(
                              list(
                                text = "string",
                                value = "string"
                              )
                            )
                          )
                        )
                      )
                    )
                  ),
                  allowInterrupt = TRUE|FALSE
                )
              )
            ),
            defaultBranch = list(
              nextStep = list(
                dialogAction = list(
                  type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
                  slotToElicit = "string",
                  suppressNextMessage = TRUE|FALSE
                ),
                intent = list(
                  name = "string",
                  slots = list(
                    list(
                      shape = "Scalar"|"List",
                      value = list(
                        interpretedValue = "string"
                      ),
                      values = list(
                        list()
                      )
                    )
                  )
                ),
                sessionAttributes = list(
                  "string"
                )
              ),
              response = list(
                messageGroups = list(
                  list(
                    message = list(
                      plainTextMessage = list(
                        value = "string"
                      ),
                      customPayload = list(
                        value = "string"
                      ),
                      ssmlMessage = list(
                        value = "string"
                      ),
                      imageResponseCard = list(
                        title = "string",
                        subtitle = "string",
                        imageUrl = "string",
                        buttons = list(
                          list(
                            text = "string",
                            value = "string"
                          )
                        )
                      )
                    ),
                    variations = list(
                      list(
                        plainTextMessage = list(
                          value = "string"
                        ),
                        customPayload = list(
                          value = "string"
                        ),
                        ssmlMessage = list(
                          value = "string"
                        ),
                        imageResponseCard = list(
                          title = "string",
                          subtitle = "string",
                          imageUrl = "string",
                          buttons = list(
                            list(
                              text = "string",
                              value = "string"
                            )
                          )
                        )
                      )
                    )
                  )
                ),
                allowInterrupt = TRUE|FALSE
              )
            )
          ),
          timeoutNextStep = list(
            dialogAction = list(
              type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
              slotToElicit = "string",
              suppressNextMessage = TRUE|FALSE
            ),
            intent = list(
              name = "string",
              slots = list(
                list(
                  shape = "Scalar"|"List",
                  value = list(
                    interpretedValue = "string"
                  ),
                  values = list(
                    list()
                  )
                )
              )
            ),
            sessionAttributes = list(
              "string"
            )
          ),
          timeoutConditional = list(
            active = TRUE|FALSE,
            conditionalBranches = list(
              list(
                name = "string",
                condition = list(
                  expressionString = "string"
                ),
                nextStep = list(
                  dialogAction = list(
                    type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
                    slotToElicit = "string",
                    suppressNextMessage = TRUE|FALSE
                  ),
                  intent = list(
                    name = "string",
                    slots = list(
                      list(
                        shape = "Scalar"|"List",
                        value = list(
                          interpretedValue = "string"
                        ),
                        values = list(
                          list()
                        )
                      )
                    )
                  ),
                  sessionAttributes = list(
                    "string"
                  )
                ),
                response = list(
                  messageGroups = list(
                    list(
                      message = list(
                        plainTextMessage = list(
                          value = "string"
                        ),
                        customPayload = list(
                          value = "string"
                        ),
                        ssmlMessage = list(
                          value = "string"
                        ),
                        imageResponseCard = list(
                          title = "string",
                          subtitle = "string",
                          imageUrl = "string",
                          buttons = list(
                            list(
                              text = "string",
                              value = "string"
                            )
                          )
                        )
                      ),
                      variations = list(
                        list(
                          plainTextMessage = list(
                            value = "string"
                          ),
                          customPayload = list(
                            value = "string"
                          ),
                          ssmlMessage = list(
                            value = "string"
                          ),
                          imageResponseCard = list(
                            title = "string",
                            subtitle = "string",
                            imageUrl = "string",
                            buttons = list(
                              list(
                                text = "string",
                                value = "string"
                              )
                            )
                          )
                        )
                      )
                    )
                  ),
                  allowInterrupt = TRUE|FALSE
                )
              )
            ),
            defaultBranch = list(
              nextStep = list(
                dialogAction = list(
                  type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
                  slotToElicit = "string",
                  suppressNextMessage = TRUE|FALSE
                ),
                intent = list(
                  name = "string",
                  slots = list(
                    list(
                      shape = "Scalar"|"List",
                      value = list(
                        interpretedValue = "string"
                      ),
                      values = list(
                        list()
                      )
                    )
                  )
                ),
                sessionAttributes = list(
                  "string"
                )
              ),
              response = list(
                messageGroups = list(
                  list(
                    message = list(
                      plainTextMessage = list(
                        value = "string"
                      ),
                      customPayload = list(
                        value = "string"
                      ),
                      ssmlMessage = list(
                        value = "string"
                      ),
                      imageResponseCard = list(
                        title = "string",
                        subtitle = "string",
                        imageUrl = "string",
                        buttons = list(
                          list(
                            text = "string",
                            value = "string"
                          )
                        )
                      )
                    ),
                    variations = list(
                      list(
                        plainTextMessage = list(
                          value = "string"
                        ),
                        customPayload = list(
                          value = "string"
                        ),
                        ssmlMessage = list(
                          value = "string"
                        ),
                        imageResponseCard = list(
                          title = "string",
                          subtitle = "string",
                          imageUrl = "string",
                          buttons = list(
                            list(
                              text = "string",
                              value = "string"
                            )
                          )
                        )
                      )
                    )
                  )
                ),
                allowInterrupt = TRUE|FALSE
              )
            )
          )
        ),
        fulfillmentUpdatesSpecification = list(
          active = TRUE|FALSE,
          startResponse = list(
            delayInSeconds = 123,
            messageGroups = list(
              list(
                message = list(
                  plainTextMessage = list(
                    value = "string"
                  ),
                  customPayload = list(
                    value = "string"
                  ),
                  ssmlMessage = list(
                    value = "string"
                  ),
                  imageResponseCard = list(
                    title = "string",
                    subtitle = "string",
                    imageUrl = "string",
                    buttons = list(
                      list(
                        text = "string",
                        value = "string"
                      )
                    )
                  )
                ),
                variations = list(
                  list(
                    plainTextMessage = list(
                      value = "string"
                    ),
                    customPayload = list(
                      value = "string"
                    ),
                    ssmlMessage = list(
                      value = "string"
                    ),
                    imageResponseCard = list(
                      title = "string",
                      subtitle = "string",
                      imageUrl = "string",
                      buttons = list(
                        list(
                          text = "string",
                          value = "string"
                        )
                      )
                    )
                  )
                )
              )
            ),
            allowInterrupt = TRUE|FALSE
          ),
          updateResponse = list(
            frequencyInSeconds = 123,
            messageGroups = list(
              list(
                message = list(
                  plainTextMessage = list(
                    value = "string"
                  ),
                  customPayload = list(
                    value = "string"
                  ),
                  ssmlMessage = list(
                    value = "string"
                  ),
                  imageResponseCard = list(
                    title = "string",
                    subtitle = "string",
                    imageUrl = "string",
                    buttons = list(
                      list(
                        text = "string",
                        value = "string"
                      )
                    )
                  )
                ),
                variations = list(
                  list(
                    plainTextMessage = list(
                      value = "string"
                    ),
                    customPayload = list(
                      value = "string"
                    ),
                    ssmlMessage = list(
                      value = "string"
                    ),
                    imageResponseCard = list(
                      title = "string",
                      subtitle = "string",
                      imageUrl = "string",
                      buttons = list(
                        list(
                          text = "string",
                          value = "string"
                        )
                      )
                    )
                  )
                )
              )
            ),
            allowInterrupt = TRUE|FALSE
          ),
          timeoutInSeconds = 123
        ),
        active = TRUE|FALSE
      ),
      slotPriorities = list(
        list(
          priority = 123,
          slotId = "string"
        )
      ),
      intentConfirmationSetting = list(
        promptSpecification = list(
          messageGroups = list(
            list(
              message = list(
                plainTextMessage = list(
                  value = "string"
                ),
                customPayload = list(
                  value = "string"
                ),
                ssmlMessage = list(
                  value = "string"
                ),
                imageResponseCard = list(
                  title = "string",
                  subtitle = "string",
                  imageUrl = "string",
                  buttons = list(
                    list(
                      text = "string",
                      value = "string"
                    )
                  )
                )
              ),
              variations = list(
                list(
                  plainTextMessage = list(
                    value = "string"
                  ),
                  customPayload = list(
                    value = "string"
                  ),
                  ssmlMessage = list(
                    value = "string"
                  ),
                  imageResponseCard = list(
                    title = "string",
                    subtitle = "string",
                    imageUrl = "string",
                    buttons = list(
                      list(
                        text = "string",
                        value = "string"
                      )
                    )
                  )
                )
              )
            )
          ),
          maxRetries = 123,
          allowInterrupt = TRUE|FALSE,
          messageSelectionStrategy = "Random"|"Ordered",
          promptAttemptsSpecification = list(
            list(
              allowInterrupt = TRUE|FALSE,
              allowedInputTypes = list(
                allowAudioInput = TRUE|FALSE,
                allowDTMFInput = TRUE|FALSE
              ),
              audioAndDTMFInputSpecification = list(
                startTimeoutMs = 123,
                audioSpecification = list(
                  maxLengthMs = 123,
                  endTimeoutMs = 123
                ),
                dtmfSpecification = list(
                  maxLength = 123,
                  endTimeoutMs = 123,
                  deletionCharacter = "string",
                  endCharacter = "string"
                )
              ),
              textInputSpecification = list(
                startTimeoutMs = 123
              )
            )
          )
        ),
        declinationResponse = list(
          messageGroups = list(
            list(
              message = list(
                plainTextMessage = list(
                  value = "string"
                ),
                customPayload = list(
                  value = "string"
                ),
                ssmlMessage = list(
                  value = "string"
                ),
                imageResponseCard = list(
                  title = "string",
                  subtitle = "string",
                  imageUrl = "string",
                  buttons = list(
                    list(
                      text = "string",
                      value = "string"
                    )
                  )
                )
              ),
              variations = list(
                list(
                  plainTextMessage = list(
                    value = "string"
                  ),
                  customPayload = list(
                    value = "string"
                  ),
                  ssmlMessage = list(
                    value = "string"
                  ),
                  imageResponseCard = list(
                    title = "string",
                    subtitle = "string",
                    imageUrl = "string",
                    buttons = list(
                      list(
                        text = "string",
                        value = "string"
                      )
                    )
                  )
                )
              )
            )
          ),
          allowInterrupt = TRUE|FALSE
        ),
        active = TRUE|FALSE,
        confirmationResponse = list(
          messageGroups = list(
            list(
              message = list(
                plainTextMessage = list(
                  value = "string"
                ),
                customPayload = list(
                  value = "string"
                ),
                ssmlMessage = list(
                  value = "string"
                ),
                imageResponseCard = list(
                  title = "string",
                  subtitle = "string",
                  imageUrl = "string",
                  buttons = list(
                    list(
                      text = "string",
                      value = "string"
                    )
                  )
                )
              ),
              variations = list(
                list(
                  plainTextMessage = list(
                    value = "string"
                  ),
                  customPayload = list(
                    value = "string"
                  ),
                  ssmlMessage = list(
                    value = "string"
                  ),
                  imageResponseCard = list(
                    title = "string",
                    subtitle = "string",
                    imageUrl = "string",
                    buttons = list(
                      list(
                        text = "string",
                        value = "string"
                      )
                    )
                  )
                )
              )
            )
          ),
          allowInterrupt = TRUE|FALSE
        ),
        confirmationNextStep = list(
          dialogAction = list(
            type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
            slotToElicit = "string",
            suppressNextMessage = TRUE|FALSE
          ),
          intent = list(
            name = "string",
            slots = list(
              list(
                shape = "Scalar"|"List",
                value = list(
                  interpretedValue = "string"
                ),
                values = list(
                  list()
                )
              )
            )
          ),
          sessionAttributes = list(
            "string"
          )
        ),
        confirmationConditional = list(
          active = TRUE|FALSE,
          conditionalBranches = list(
            list(
              name = "string",
              condition = list(
                expressionString = "string"
              ),
              nextStep = list(
                dialogAction = list(
                  type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
                  slotToElicit = "string",
                  suppressNextMessage = TRUE|FALSE
                ),
                intent = list(
                  name = "string",
                  slots = list(
                    list(
                      shape = "Scalar"|"List",
                      value = list(
                        interpretedValue = "string"
                      ),
                      values = list(
                        list()
                      )
                    )
                  )
                ),
                sessionAttributes = list(
                  "string"
                )
              ),
              response = list(
                messageGroups = list(
                  list(
                    message = list(
                      plainTextMessage = list(
                        value = "string"
                      ),
                      customPayload = list(
                        value = "string"
                      ),
                      ssmlMessage = list(
                        value = "string"
                      ),
                      imageResponseCard = list(
                        title = "string",
                        subtitle = "string",
                        imageUrl = "string",
                        buttons = list(
                          list(
                            text = "string",
                            value = "string"
                          )
                        )
                      )
                    ),
                    variations = list(
                      list(
                        plainTextMessage = list(
                          value = "string"
                        ),
                        customPayload = list(
                          value = "string"
                        ),
                        ssmlMessage = list(
                          value = "string"
                        ),
                        imageResponseCard = list(
                          title = "string",
                          subtitle = "string",
                          imageUrl = "string",
                          buttons = list(
                            list(
                              text = "string",
                              value = "string"
                            )
                          )
                        )
                      )
                    )
                  )
                ),
                allowInterrupt = TRUE|FALSE
              )
            )
          ),
          defaultBranch = list(
            nextStep = list(
              dialogAction = list(
                type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
                slotToElicit = "string",
                suppressNextMessage = TRUE|FALSE
              ),
              intent = list(
                name = "string",
                slots = list(
                  list(
                    shape = "Scalar"|"List",
                    value = list(
                      interpretedValue = "string"
                    ),
                    values = list(
                      list()
                    )
                  )
                )
              ),
              sessionAttributes = list(
                "string"
              )
            ),
            response = list(
              messageGroups = list(
                list(
                  message = list(
                    plainTextMessage = list(
                      value = "string"
                    ),
                    customPayload = list(
                      value = "string"
                    ),
                    ssmlMessage = list(
                      value = "string"
                    ),
                    imageResponseCard = list(
                      title = "string",
                      subtitle = "string",
                      imageUrl = "string",
                      buttons = list(
                        list(
                          text = "string",
                          value = "string"
                        )
                      )
                    )
                  ),
                  variations = list(
                    list(
                      plainTextMessage = list(
                        value = "string"
                      ),
                      customPayload = list(
                        value = "string"
                      ),
                      ssmlMessage = list(
                        value = "string"
                      ),
                      imageResponseCard = list(
                        title = "string",
                        subtitle = "string",
                        imageUrl = "string",
                        buttons = list(
                          list(
                            text = "string",
                            value = "string"
                          )
                        )
                      )
                    )
                  )
                )
              ),
              allowInterrupt = TRUE|FALSE
            )
          )
        ),
        declinationNextStep = list(
          dialogAction = list(
            type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
            slotToElicit = "string",
            suppressNextMessage = TRUE|FALSE
          ),
          intent = list(
            name = "string",
            slots = list(
              list(
                shape = "Scalar"|"List",
                value = list(
                  interpretedValue = "string"
                ),
                values = list(
                  list()
                )
              )
            )
          ),
          sessionAttributes = list(
            "string"
          )
        ),
        declinationConditional = list(
          active = TRUE|FALSE,
          conditionalBranches = list(
            list(
              name = "string",
              condition = list(
                expressionString = "string"
              ),
              nextStep = list(
                dialogAction = list(
                  type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
                  slotToElicit = "string",
                  suppressNextMessage = TRUE|FALSE
                ),
                intent = list(
                  name = "string",
                  slots = list(
                    list(
                      shape = "Scalar"|"List",
                      value = list(
                        interpretedValue = "string"
                      ),
                      values = list(
                        list()
                      )
                    )
                  )
                ),
                sessionAttributes = list(
                  "string"
                )
              ),
              response = list(
                messageGroups = list(
                  list(
                    message = list(
                      plainTextMessage = list(
                        value = "string"
                      ),
                      customPayload = list(
                        value = "string"
                      ),
                      ssmlMessage = list(
                        value = "string"
                      ),
                      imageResponseCard = list(
                        title = "string",
                        subtitle = "string",
                        imageUrl = "string",
                        buttons = list(
                          list(
                            text = "string",
                            value = "string"
                          )
                        )
                      )
                    ),
                    variations = list(
                      list(
                        plainTextMessage = list(
                          value = "string"
                        ),
                        customPayload = list(
                          value = "string"
                        ),
                        ssmlMessage = list(
                          value = "string"
                        ),
                        imageResponseCard = list(
                          title = "string",
                          subtitle = "string",
                          imageUrl = "string",
                          buttons = list(
                            list(
                              text = "string",
                              value = "string"
                            )
                          )
                        )
                      )
                    )
                  )
                ),
                allowInterrupt = TRUE|FALSE
              )
            )
          ),
          defaultBranch = list(
            nextStep = list(
              dialogAction = list(
                type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
                slotToElicit = "string",
                suppressNextMessage = TRUE|FALSE
              ),
              intent = list(
                name = "string",
                slots = list(
                  list(
                    shape = "Scalar"|"List",
                    value = list(
                      interpretedValue = "string"
                    ),
                    values = list(
                      list()
                    )
                  )
                )
              ),
              sessionAttributes = list(
                "string"
              )
            ),
            response = list(
              messageGroups = list(
                list(
                  message = list(
                    plainTextMessage = list(
                      value = "string"
                    ),
                    customPayload = list(
                      value = "string"
                    ),
                    ssmlMessage = list(
                      value = "string"
                    ),
                    imageResponseCard = list(
                      title = "string",
                      subtitle = "string",
                      imageUrl = "string",
                      buttons = list(
                        list(
                          text = "string",
                          value = "string"
                        )
                      )
                    )
                  ),
                  variations = list(
                    list(
                      plainTextMessage = list(
                        value = "string"
                      ),
                      customPayload = list(
                        value = "string"
                      ),
                      ssmlMessage = list(
                        value = "string"
                      ),
                      imageResponseCard = list(
                        title = "string",
                        subtitle = "string",
                        imageUrl = "string",
                        buttons = list(
                          list(
                            text = "string",
                            value = "string"
                          )
                        )
                      )
                    )
                  )
                )
              ),
              allowInterrupt = TRUE|FALSE
            )
          )
        ),
        failureResponse = list(
          messageGroups = list(
            list(
              message = list(
                plainTextMessage = list(
                  value = "string"
                ),
                customPayload = list(
                  value = "string"
                ),
                ssmlMessage = list(
                  value = "string"
                ),
                imageResponseCard = list(
                  title = "string",
                  subtitle = "string",
                  imageUrl = "string",
                  buttons = list(
                    list(
                      text = "string",
                      value = "string"
                    )
                  )
                )
              ),
              variations = list(
                list(
                  plainTextMessage = list(
                    value = "string"
                  ),
                  customPayload = list(
                    value = "string"
                  ),
                  ssmlMessage = list(
                    value = "string"
                  ),
                  imageResponseCard = list(
                    title = "string",
                    subtitle = "string",
                    imageUrl = "string",
                    buttons = list(
                      list(
                        text = "string",
                        value = "string"
                      )
                    )
                  )
                )
              )
            )
          ),
          allowInterrupt = TRUE|FALSE
        ),
        failureNextStep = list(
          dialogAction = list(
            type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
            slotToElicit = "string",
            suppressNextMessage = TRUE|FALSE
          ),
          intent = list(
            name = "string",
            slots = list(
              list(
                shape = "Scalar"|"List",
                value = list(
                  interpretedValue = "string"
                ),
                values = list(
                  list()
                )
              )
            )
          ),
          sessionAttributes = list(
            "string"
          )
        ),
        failureConditional = list(
          active = TRUE|FALSE,
          conditionalBranches = list(
            list(
              name = "string",
              condition = list(
                expressionString = "string"
              ),
              nextStep = list(
                dialogAction = list(
                  type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
                  slotToElicit = "string",
                  suppressNextMessage = TRUE|FALSE
                ),
                intent = list(
                  name = "string",
                  slots = list(
                    list(
                      shape = "Scalar"|"List",
                      value = list(
                        interpretedValue = "string"
                      ),
                      values = list(
                        list()
                      )
                    )
                  )
                ),
                sessionAttributes = list(
                  "string"
                )
              ),
              response = list(
                messageGroups = list(
                  list(
                    message = list(
                      plainTextMessage = list(
                        value = "string"
                      ),
                      customPayload = list(
                        value = "string"
                      ),
                      ssmlMessage = list(
                        value = "string"
                      ),
                      imageResponseCard = list(
                        title = "string",
                        subtitle = "string",
                        imageUrl = "string",
                        buttons = list(
                          list(
                            text = "string",
                            value = "string"
                          )
                        )
                      )
                    ),
                    variations = list(
                      list(
                        plainTextMessage = list(
                          value = "string"
                        ),
                        customPayload = list(
                          value = "string"
                        ),
                        ssmlMessage = list(
                          value = "string"
                        ),
                        imageResponseCard = list(
                          title = "string",
                          subtitle = "string",
                          imageUrl = "string",
                          buttons = list(
                            list(
                              text = "string",
                              value = "string"
                            )
                          )
                        )
                      )
                    )
                  )
                ),
                allowInterrupt = TRUE|FALSE
              )
            )
          ),
          defaultBranch = list(
            nextStep = list(
              dialogAction = list(
                type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
                slotToElicit = "string",
                suppressNextMessage = TRUE|FALSE
              ),
              intent = list(
                name = "string",
                slots = list(
                  list(
                    shape = "Scalar"|"List",
                    value = list(
                      interpretedValue = "string"
                    ),
                    values = list(
                      list()
                    )
                  )
                )
              ),
              sessionAttributes = list(
                "string"
              )
            ),
            response = list(
              messageGroups = list(
                list(
                  message = list(
                    plainTextMessage = list(
                      value = "string"
                    ),
                    customPayload = list(
                      value = "string"
                    ),
                    ssmlMessage = list(
                      value = "string"
                    ),
                    imageResponseCard = list(
                      title = "string",
                      subtitle = "string",
                      imageUrl = "string",
                      buttons = list(
                        list(
                          text = "string",
                          value = "string"
                        )
                      )
                    )
                  ),
                  variations = list(
                    list(
                      plainTextMessage = list(
                        value = "string"
                      ),
                      customPayload = list(
                        value = "string"
                      ),
                      ssmlMessage = list(
                        value = "string"
                      ),
                      imageResponseCard = list(
                        title = "string",
                        subtitle = "string",
                        imageUrl = "string",
                        buttons = list(
                          list(
                            text = "string",
                            value = "string"
                          )
                        )
                      )
                    )
                  )
                )
              ),
              allowInterrupt = TRUE|FALSE
            )
          )
        ),
        codeHook = list(
          enableCodeHookInvocation = TRUE|FALSE,
          active = TRUE|FALSE,
          invocationLabel = "string",
          postCodeHookSpecification = list(
            successResponse = list(
              messageGroups = list(
                list(
                  message = list(
                    plainTextMessage = list(
                      value = "string"
                    ),
                    customPayload = list(
                      value = "string"
                    ),
                    ssmlMessage = list(
                      value = "string"
                    ),
                    imageResponseCard = list(
                      title = "string",
                      subtitle = "string",
                      imageUrl = "string",
                      buttons = list(
                        list(
                          text = "string",
                          value = "string"
                        )
                      )
                    )
                  ),
                  variations = list(
                    list(
                      plainTextMessage = list(
                        value = "string"
                      ),
                      customPayload = list(
                        value = "string"
                      ),
                      ssmlMessage = list(
                        value = "string"
                      ),
                      imageResponseCard = list(
                        title = "string",
                        subtitle = "string",
                        imageUrl = "string",
                        buttons = list(
                          list(
                            text = "string",
                            value = "string"
                          )
                        )
                      )
                    )
                  )
                )
              ),
              allowInterrupt = TRUE|FALSE
            ),
            successNextStep = list(
              dialogAction = list(
                type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
                slotToElicit = "string",
                suppressNextMessage = TRUE|FALSE
              ),
              intent = list(
                name = "string",
                slots = list(
                  list(
                    shape = "Scalar"|"List",
                    value = list(
                      interpretedValue = "string"
                    ),
                    values = list(
                      list()
                    )
                  )
                )
              ),
              sessionAttributes = list(
                "string"
              )
            ),
            successConditional = list(
              active = TRUE|FALSE,
              conditionalBranches = list(
                list(
                  name = "string",
                  condition = list(
                    expressionString = "string"
                  ),
                  nextStep = list(
                    dialogAction = list(
                      type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
                      slotToElicit = "string",
                      suppressNextMessage = TRUE|FALSE
                    ),
                    intent = list(
                      name = "string",
                      slots = list(
                        list(
                          shape = "Scalar"|"List",
                          value = list(
                            interpretedValue = "string"
                          ),
                          values = list(
                            list()
                          )
                        )
                      )
                    ),
                    sessionAttributes = list(
                      "string"
                    )
                  ),
                  response = list(
                    messageGroups = list(
                      list(
                        message = list(
                          plainTextMessage = list(
                            value = "string"
                          ),
                          customPayload = list(
                            value = "string"
                          ),
                          ssmlMessage = list(
                            value = "string"
                          ),
                          imageResponseCard = list(
                            title = "string",
                            subtitle = "string",
                            imageUrl = "string",
                            buttons = list(
                              list(
                                text = "string",
                                value = "string"
                              )
                            )
                          )
                        ),
                        variations = list(
                          list(
                            plainTextMessage = list(
                              value = "string"
                            ),
                            customPayload = list(
                              value = "string"
                            ),
                            ssmlMessage = list(
                              value = "string"
                            ),
                            imageResponseCard = list(
                              title = "string",
                              subtitle = "string",
                              imageUrl = "string",
                              buttons = list(
                                list(
                                  text = "string",
                                  value = "string"
                                )
                              )
                            )
                          )
                        )
                      )
                    ),
                    allowInterrupt = TRUE|FALSE
                  )
                )
              ),
              defaultBranch = list(
                nextStep = list(
                  dialogAction = list(
                    type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
                    slotToElicit = "string",
                    suppressNextMessage = TRUE|FALSE
                  ),
                  intent = list(
                    name = "string",
                    slots = list(
                      list(
                        shape = "Scalar"|"List",
                        value = list(
                          interpretedValue = "string"
                        ),
                        values = list(
                          list()
                        )
                      )
                    )
                  ),
                  sessionAttributes = list(
                    "string"
                  )
                ),
                response = list(
                  messageGroups = list(
                    list(
                      message = list(
                        plainTextMessage = list(
                          value = "string"
                        ),
                        customPayload = list(
                          value = "string"
                        ),
                        ssmlMessage = list(
                          value = "string"
                        ),
                        imageResponseCard = list(
                          title = "string",
                          subtitle = "string",
                          imageUrl = "string",
                          buttons = list(
                            list(
                              text = "string",
                              value = "string"
                            )
                          )
                        )
                      ),
                      variations = list(
                        list(
                          plainTextMessage = list(
                            value = "string"
                          ),
                          customPayload = list(
                            value = "string"
                          ),
                          ssmlMessage = list(
                            value = "string"
                          ),
                          imageResponseCard = list(
                            title = "string",
                            subtitle = "string",
                            imageUrl = "string",
                            buttons = list(
                              list(
                                text = "string",
                                value = "string"
                              )
                            )
                          )
                        )
                      )
                    )
                  ),
                  allowInterrupt = TRUE|FALSE
                )
              )
            ),
            failureResponse = list(
              messageGroups = list(
                list(
                  message = list(
                    plainTextMessage = list(
                      value = "string"
                    ),
                    customPayload = list(
                      value = "string"
                    ),
                    ssmlMessage = list(
                      value = "string"
                    ),
                    imageResponseCard = list(
                      title = "string",
                      subtitle = "string",
                      imageUrl = "string",
                      buttons = list(
                        list(
                          text = "string",
                          value = "string"
                        )
                      )
                    )
                  ),
                  variations = list(
                    list(
                      plainTextMessage = list(
                        value = "string"
                      ),
                      customPayload = list(
                        value = "string"
                      ),
                      ssmlMessage = list(
                        value = "string"
                      ),
                      imageResponseCard = list(
                        title = "string",
                        subtitle = "string",
                        imageUrl = "string",
                        buttons = list(
                          list(
                            text = "string",
                            value = "string"
                          )
                        )
                      )
                    )
                  )
                )
              ),
              allowInterrupt = TRUE|FALSE
            ),
            failureNextStep = list(
              dialogAction = list(
                type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
                slotToElicit = "string",
                suppressNextMessage = TRUE|FALSE
              ),
              intent = list(
                name = "string",
                slots = list(
                  list(
                    shape = "Scalar"|"List",
                    value = list(
                      interpretedValue = "string"
                    ),
                    values = list(
                      list()
                    )
                  )
                )
              ),
              sessionAttributes = list(
                "string"
              )
            ),
            failureConditional = list(
              active = TRUE|FALSE,
              conditionalBranches = list(
                list(
                  name = "string",
                  condition = list(
                    expressionString = "string"
                  ),
                  nextStep = list(
                    dialogAction = list(
                      type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
                      slotToElicit = "string",
                      suppressNextMessage = TRUE|FALSE
                    ),
                    intent = list(
                      name = "string",
                      slots = list(
                        list(
                          shape = "Scalar"|"List",
                          value = list(
                            interpretedValue = "string"
                          ),
                          values = list(
                            list()
                          )
                        )
                      )
                    ),
                    sessionAttributes = list(
                      "string"
                    )
                  ),
                  response = list(
                    messageGroups = list(
                      list(
                        message = list(
                          plainTextMessage = list(
                            value = "string"
                          ),
                          customPayload = list(
                            value = "string"
                          ),
                          ssmlMessage = list(
                            value = "string"
                          ),
                          imageResponseCard = list(
                            title = "string",
                            subtitle = "string",
                            imageUrl = "string",
                            buttons = list(
                              list(
                                text = "string",
                                value = "string"
                              )
                            )
                          )
                        ),
                        variations = list(
                          list(
                            plainTextMessage = list(
                              value = "string"
                            ),
                            customPayload = list(
                              value = "string"
                            ),
                            ssmlMessage = list(
                              value = "string"
                            ),
                            imageResponseCard = list(
                              title = "string",
                              subtitle = "string",
                              imageUrl = "string",
                              buttons = list(
                                list(
                                  text = "string",
                                  value = "string"
                                )
                              )
                            )
                          )
                        )
                      )
                    ),
                    allowInterrupt = TRUE|FALSE
                  )
                )
              ),
              defaultBranch = list(
                nextStep = list(
                  dialogAction = list(
                    type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
                    slotToElicit = "string",
                    suppressNextMessage = TRUE|FALSE
                  ),
                  intent = list(
                    name = "string",
                    slots = list(
                      list(
                        shape = "Scalar"|"List",
                        value = list(
                          interpretedValue = "string"
                        ),
                        values = list(
                          list()
                        )
                      )
                    )
                  ),
                  sessionAttributes = list(
                    "string"
                  )
                ),
                response = list(
                  messageGroups = list(
                    list(
                      message = list(
                        plainTextMessage = list(
                          value = "string"
                        ),
                        customPayload = list(
                          value = "string"
                        ),
                        ssmlMessage = list(
                          value = "string"
                        ),
                        imageResponseCard = list(
                          title = "string",
                          subtitle = "string",
                          imageUrl = "string",
                          buttons = list(
                            list(
                              text = "string",
                              value = "string"
                            )
                          )
                        )
                      ),
                      variations = list(
                        list(
                          plainTextMessage = list(
                            value = "string"
                          ),
                          customPayload = list(
                            value = "string"
                          ),
                          ssmlMessage = list(
                            value = "string"
                          ),
                          imageResponseCard = list(
                            title = "string",
                            subtitle = "string",
                            imageUrl = "string",
                            buttons = list(
                              list(
                                text = "string",
                                value = "string"
                              )
                            )
                          )
                        )
                      )
                    )
                  ),
                  allowInterrupt = TRUE|FALSE
                )
              )
            ),
            timeoutResponse = list(
              messageGroups = list(
                list(
                  message = list(
                    plainTextMessage = list(
                      value = "string"
                    ),
                    customPayload = list(
                      value = "string"
                    ),
                    ssmlMessage = list(
                      value = "string"
                    ),
                    imageResponseCard = list(
                      title = "string",
                      subtitle = "string",
                      imageUrl = "string",
                      buttons = list(
                        list(
                          text = "string",
                          value = "string"
                        )
                      )
                    )
                  ),
                  variations = list(
                    list(
                      plainTextMessage = list(
                        value = "string"
                      ),
                      customPayload = list(
                        value = "string"
                      ),
                      ssmlMessage = list(
                        value = "string"
                      ),
                      imageResponseCard = list(
                        title = "string",
                        subtitle = "string",
                        imageUrl = "string",
                        buttons = list(
                          list(
                            text = "string",
                            value = "string"
                          )
                        )
                      )
                    )
                  )
                )
              ),
              allowInterrupt = TRUE|FALSE
            ),
            timeoutNextStep = list(
              dialogAction = list(
                type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
                slotToElicit = "string",
                suppressNextMessage = TRUE|FALSE
              ),
              intent = list(
                name = "string",
                slots = list(
                  list(
                    shape = "Scalar"|"List",
                    value = list(
                      interpretedValue = "string"
                    ),
                    values = list(
                      list()
                    )
                  )
                )
              ),
              sessionAttributes = list(
                "string"
              )
            ),
            timeoutConditional = list(
              active = TRUE|FALSE,
              conditionalBranches = list(
                list(
                  name = "string",
                  condition = list(
                    expressionString = "string"
                  ),
                  nextStep = list(
                    dialogAction = list(
                      type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
                      slotToElicit = "string",
                      suppressNextMessage = TRUE|FALSE
                    ),
                    intent = list(
                      name = "string",
                      slots = list(
                        list(
                          shape = "Scalar"|"List",
                          value = list(
                            interpretedValue = "string"
                          ),
                          values = list(
                            list()
                          )
                        )
                      )
                    ),
                    sessionAttributes = list(
                      "string"
                    )
                  ),
                  response = list(
                    messageGroups = list(
                      list(
                        message = list(
                          plainTextMessage = list(
                            value = "string"
                          ),
                          customPayload = list(
                            value = "string"
                          ),
                          ssmlMessage = list(
                            value = "string"
                          ),
                          imageResponseCard = list(
                            title = "string",
                            subtitle = "string",
                            imageUrl = "string",
                            buttons = list(
                              list(
                                text = "string",
                                value = "string"
                              )
                            )
                          )
                        ),
                        variations = list(
                          list(
                            plainTextMessage = list(
                              value = "string"
                            ),
                            customPayload = list(
                              value = "string"
                            ),
                            ssmlMessage = list(
                              value = "string"
                            ),
                            imageResponseCard = list(
                              title = "string",
                              subtitle = "string",
                              imageUrl = "string",
                              buttons = list(
                                list(
                                  text = "string",
                                  value = "string"
                                )
                              )
                            )
                          )
                        )
                      )
                    ),
                    allowInterrupt = TRUE|FALSE
                  )
                )
              ),
              defaultBranch = list(
                nextStep = list(
                  dialogAction = list(
                    type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
                    slotToElicit = "string",
                    suppressNextMessage = TRUE|FALSE
                  ),
                  intent = list(
                    name = "string",
                    slots = list(
                      list(
                        shape = "Scalar"|"List",
                        value = list(
                          interpretedValue = "string"
                        ),
                        values = list(
                          list()
                        )
                      )
                    )
                  ),
                  sessionAttributes = list(
                    "string"
                  )
                ),
                response = list(
                  messageGroups = list(
                    list(
                      message = list(
                        plainTextMessage = list(
                          value = "string"
                        ),
                        customPayload = list(
                          value = "string"
                        ),
                        ssmlMessage = list(
                          value = "string"
                        ),
                        imageResponseCard = list(
                          title = "string",
                          subtitle = "string",
                          imageUrl = "string",
                          buttons = list(
                            list(
                              text = "string",
                              value = "string"
                            )
                          )
                        )
                      ),
                      variations = list(
                        list(
                          plainTextMessage = list(
                            value = "string"
                          ),
                          customPayload = list(
                            value = "string"
                          ),
                          ssmlMessage = list(
                            value = "string"
                          ),
                          imageResponseCard = list(
                            title = "string",
                            subtitle = "string",
                            imageUrl = "string",
                            buttons = list(
                              list(
                                text = "string",
                                value = "string"
                              )
                            )
                          )
                        )
                      )
                    )
                  ),
                  allowInterrupt = TRUE|FALSE
                )
              )
            )
          )
        ),
        elicitationCodeHook = list(
          enableCodeHookInvocation = TRUE|FALSE,
          invocationLabel = "string"
        )
      ),
      intentClosingSetting = list(
        closingResponse = list(
          messageGroups = list(
            list(
              message = list(
                plainTextMessage = list(
                  value = "string"
                ),
                customPayload = list(
                  value = "string"
                ),
                ssmlMessage = list(
                  value = "string"
                ),
                imageResponseCard = list(
                  title = "string",
                  subtitle = "string",
                  imageUrl = "string",
                  buttons = list(
                    list(
                      text = "string",
                      value = "string"
                    )
                  )
                )
              ),
              variations = list(
                list(
                  plainTextMessage = list(
                    value = "string"
                  ),
                  customPayload = list(
                    value = "string"
                  ),
                  ssmlMessage = list(
                    value = "string"
                  ),
                  imageResponseCard = list(
                    title = "string",
                    subtitle = "string",
                    imageUrl = "string",
                    buttons = list(
                      list(
                        text = "string",
                        value = "string"
                      )
                    )
                  )
                )
              )
            )
          ),
          allowInterrupt = TRUE|FALSE
        ),
        active = TRUE|FALSE,
        nextStep = list(
          dialogAction = list(
            type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
            slotToElicit = "string",
            suppressNextMessage = TRUE|FALSE
          ),
          intent = list(
            name = "string",
            slots = list(
              list(
                shape = "Scalar"|"List",
                value = list(
                  interpretedValue = "string"
                ),
                values = list(
                  list()
                )
              )
            )
          ),
          sessionAttributes = list(
            "string"
          )
        ),
        conditional = list(
          active = TRUE|FALSE,
          conditionalBranches = list(
            list(
              name = "string",
              condition = list(
                expressionString = "string"
              ),
              nextStep = list(
                dialogAction = list(
                  type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
                  slotToElicit = "string",
                  suppressNextMessage = TRUE|FALSE
                ),
                intent = list(
                  name = "string",
                  slots = list(
                    list(
                      shape = "Scalar"|"List",
                      value = list(
                        interpretedValue = "string"
                      ),
                      values = list(
                        list()
                      )
                    )
                  )
                ),
                sessionAttributes = list(
                  "string"
                )
              ),
              response = list(
                messageGroups = list(
                  list(
                    message = list(
                      plainTextMessage = list(
                        value = "string"
                      ),
                      customPayload = list(
                        value = "string"
                      ),
                      ssmlMessage = list(
                        value = "string"
                      ),
                      imageResponseCard = list(
                        title = "string",
                        subtitle = "string",
                        imageUrl = "string",
                        buttons = list(
                          list(
                            text = "string",
                            value = "string"
                          )
                        )
                      )
                    ),
                    variations = list(
                      list(
                        plainTextMessage = list(
                          value = "string"
                        ),
                        customPayload = list(
                          value = "string"
                        ),
                        ssmlMessage = list(
                          value = "string"
                        ),
                        imageResponseCard = list(
                          title = "string",
                          subtitle = "string",
                          imageUrl = "string",
                          buttons = list(
                            list(
                              text = "string",
                              value = "string"
                            )
                          )
                        )
                      )
                    )
                  )
                ),
                allowInterrupt = TRUE|FALSE
              )
            )
          ),
          defaultBranch = list(
            nextStep = list(
              dialogAction = list(
                type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
                slotToElicit = "string",
                suppressNextMessage = TRUE|FALSE
              ),
              intent = list(
                name = "string",
                slots = list(
                  list(
                    shape = "Scalar"|"List",
                    value = list(
                      interpretedValue = "string"
                    ),
                    values = list(
                      list()
                    )
                  )
                )
              ),
              sessionAttributes = list(
                "string"
              )
            ),
            response = list(
              messageGroups = list(
                list(
                  message = list(
                    plainTextMessage = list(
                      value = "string"
                    ),
                    customPayload = list(
                      value = "string"
                    ),
                    ssmlMessage = list(
                      value = "string"
                    ),
                    imageResponseCard = list(
                      title = "string",
                      subtitle = "string",
                      imageUrl = "string",
                      buttons = list(
                        list(
                          text = "string",
                          value = "string"
                        )
                      )
                    )
                  ),
                  variations = list(
                    list(
                      plainTextMessage = list(
                        value = "string"
                      ),
                      customPayload = list(
                        value = "string"
                      ),
                      ssmlMessage = list(
                        value = "string"
                      ),
                      imageResponseCard = list(
                        title = "string",
                        subtitle = "string",
                        imageUrl = "string",
                        buttons = list(
                          list(
                            text = "string",
                            value = "string"
                          )
                        )
                      )
                    )
                  )
                )
              ),
              allowInterrupt = TRUE|FALSE
            )
          )
        )
      ),
      inputContexts = list(
        list(
          name = "string"
        )
      ),
      outputContexts = list(
        list(
          name = "string",
          timeToLiveInSeconds = 123,
          turnsToLive = 123
        )
      ),
      kendraConfiguration = list(
        kendraIndex = "string",
        queryFilterStringEnabled = TRUE|FALSE,
        queryFilterString = "string"
      ),
      botId = "string",
      botVersion = "string",
      localeId = "string",
      creationDateTime = as.POSIXct(
        "2015-01-01"
      ),
      lastUpdatedDateTime = as.POSIXct(
        "2015-01-01"
      ),
      initialResponseSetting = list(
        initialResponse = list(
          messageGroups = list(
            list(
              message = list(
                plainTextMessage = list(
                  value = "string"
                ),
                customPayload = list(
                  value = "string"
                ),
                ssmlMessage = list(
                  value = "string"
                ),
                imageResponseCard = list(
                  title = "string",
                  subtitle = "string",
                  imageUrl = "string",
                  buttons = list(
                    list(
                      text = "string",
                      value = "string"
                    )
                  )
                )
              ),
              variations = list(
                list(
                  plainTextMessage = list(
                    value = "string"
                  ),
                  customPayload = list(
                    value = "string"
                  ),
                  ssmlMessage = list(
                    value = "string"
                  ),
                  imageResponseCard = list(
                    title = "string",
                    subtitle = "string",
                    imageUrl = "string",
                    buttons = list(
                      list(
                        text = "string",
                        value = "string"
                      )
                    )
                  )
                )
              )
            )
          ),
          allowInterrupt = TRUE|FALSE
        ),
        nextStep = list(
          dialogAction = list(
            type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
            slotToElicit = "string",
            suppressNextMessage = TRUE|FALSE
          ),
          intent = list(
            name = "string",
            slots = list(
              list(
                shape = "Scalar"|"List",
                value = list(
                  interpretedValue = "string"
                ),
                values = list(
                  list()
                )
              )
            )
          ),
          sessionAttributes = list(
            "string"
          )
        ),
        conditional = list(
          active = TRUE|FALSE,
          conditionalBranches = list(
            list(
              name = "string",
              condition = list(
                expressionString = "string"
              ),
              nextStep = list(
                dialogAction = list(
                  type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
                  slotToElicit = "string",
                  suppressNextMessage = TRUE|FALSE
                ),
                intent = list(
                  name = "string",
                  slots = list(
                    list(
                      shape = "Scalar"|"List",
                      value = list(
                        interpretedValue = "string"
                      ),
                      values = list(
                        list()
                      )
                    )
                  )
                ),
                sessionAttributes = list(
                  "string"
                )
              ),
              response = list(
                messageGroups = list(
                  list(
                    message = list(
                      plainTextMessage = list(
                        value = "string"
                      ),
                      customPayload = list(
                        value = "string"
                      ),
                      ssmlMessage = list(
                        value = "string"
                      ),
                      imageResponseCard = list(
                        title = "string",
                        subtitle = "string",
                        imageUrl = "string",
                        buttons = list(
                          list(
                            text = "string",
                            value = "string"
                          )
                        )
                      )
                    ),
                    variations = list(
                      list(
                        plainTextMessage = list(
                          value = "string"
                        ),
                        customPayload = list(
                          value = "string"
                        ),
                        ssmlMessage = list(
                          value = "string"
                        ),
                        imageResponseCard = list(
                          title = "string",
                          subtitle = "string",
                          imageUrl = "string",
                          buttons = list(
                            list(
                              text = "string",
                              value = "string"
                            )
                          )
                        )
                      )
                    )
                  )
                ),
                allowInterrupt = TRUE|FALSE
              )
            )
          ),
          defaultBranch = list(
            nextStep = list(
              dialogAction = list(
                type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
                slotToElicit = "string",
                suppressNextMessage = TRUE|FALSE
              ),
              intent = list(
                name = "string",
                slots = list(
                  list(
                    shape = "Scalar"|"List",
                    value = list(
                      interpretedValue = "string"
                    ),
                    values = list(
                      list()
                    )
                  )
                )
              ),
              sessionAttributes = list(
                "string"
              )
            ),
            response = list(
              messageGroups = list(
                list(
                  message = list(
                    plainTextMessage = list(
                      value = "string"
                    ),
                    customPayload = list(
                      value = "string"
                    ),
                    ssmlMessage = list(
                      value = "string"
                    ),
                    imageResponseCard = list(
                      title = "string",
                      subtitle = "string",
                      imageUrl = "string",
                      buttons = list(
                        list(
                          text = "string",
                          value = "string"
                        )
                      )
                    )
                  ),
                  variations = list(
                    list(
                      plainTextMessage = list(
                        value = "string"
                      ),
                      customPayload = list(
                        value = "string"
                      ),
                      ssmlMessage = list(
                        value = "string"
                      ),
                      imageResponseCard = list(
                        title = "string",
                        subtitle = "string",
                        imageUrl = "string",
                        buttons = list(
                          list(
                            text = "string",
                            value = "string"
                          )
                        )
                      )
                    )
                  )
                )
              ),
              allowInterrupt = TRUE|FALSE
            )
          )
        ),
        codeHook = list(
          enableCodeHookInvocation = TRUE|FALSE,
          active = TRUE|FALSE,
          invocationLabel = "string",
          postCodeHookSpecification = list(
            successResponse = list(
              messageGroups = list(
                list(
                  message = list(
                    plainTextMessage = list(
                      value = "string"
                    ),
                    customPayload = list(
                      value = "string"
                    ),
                    ssmlMessage = list(
                      value = "string"
                    ),
                    imageResponseCard = list(
                      title = "string",
                      subtitle = "string",
                      imageUrl = "string",
                      buttons = list(
                        list(
                          text = "string",
                          value = "string"
                        )
                      )
                    )
                  ),
                  variations = list(
                    list(
                      plainTextMessage = list(
                        value = "string"
                      ),
                      customPayload = list(
                        value = "string"
                      ),
                      ssmlMessage = list(
                        value = "string"
                      ),
                      imageResponseCard = list(
                        title = "string",
                        subtitle = "string",
                        imageUrl = "string",
                        buttons = list(
                          list(
                            text = "string",
                            value = "string"
                          )
                        )
                      )
                    )
                  )
                )
              ),
              allowInterrupt = TRUE|FALSE
            ),
            successNextStep = list(
              dialogAction = list(
                type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
                slotToElicit = "string",
                suppressNextMessage = TRUE|FALSE
              ),
              intent = list(
                name = "string",
                slots = list(
                  list(
                    shape = "Scalar"|"List",
                    value = list(
                      interpretedValue = "string"
                    ),
                    values = list(
                      list()
                    )
                  )
                )
              ),
              sessionAttributes = list(
                "string"
              )
            ),
            successConditional = list(
              active = TRUE|FALSE,
              conditionalBranches = list(
                list(
                  name = "string",
                  condition = list(
                    expressionString = "string"
                  ),
                  nextStep = list(
                    dialogAction = list(
                      type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
                      slotToElicit = "string",
                      suppressNextMessage = TRUE|FALSE
                    ),
                    intent = list(
                      name = "string",
                      slots = list(
                        list(
                          shape = "Scalar"|"List",
                          value = list(
                            interpretedValue = "string"
                          ),
                          values = list(
                            list()
                          )
                        )
                      )
                    ),
                    sessionAttributes = list(
                      "string"
                    )
                  ),
                  response = list(
                    messageGroups = list(
                      list(
                        message = list(
                          plainTextMessage = list(
                            value = "string"
                          ),
                          customPayload = list(
                            value = "string"
                          ),
                          ssmlMessage = list(
                            value = "string"
                          ),
                          imageResponseCard = list(
                            title = "string",
                            subtitle = "string",
                            imageUrl = "string",
                            buttons = list(
                              list(
                                text = "string",
                                value = "string"
                              )
                            )
                          )
                        ),
                        variations = list(
                          list(
                            plainTextMessage = list(
                              value = "string"
                            ),
                            customPayload = list(
                              value = "string"
                            ),
                            ssmlMessage = list(
                              value = "string"
                            ),
                            imageResponseCard = list(
                              title = "string",
                              subtitle = "string",
                              imageUrl = "string",
                              buttons = list(
                                list(
                                  text = "string",
                                  value = "string"
                                )
                              )
                            )
                          )
                        )
                      )
                    ),
                    allowInterrupt = TRUE|FALSE
                  )
                )
              ),
              defaultBranch = list(
                nextStep = list(
                  dialogAction = list(
                    type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
                    slotToElicit = "string",
                    suppressNextMessage = TRUE|FALSE
                  ),
                  intent = list(
                    name = "string",
                    slots = list(
                      list(
                        shape = "Scalar"|"List",
                        value = list(
                          interpretedValue = "string"
                        ),
                        values = list(
                          list()
                        )
                      )
                    )
                  ),
                  sessionAttributes = list(
                    "string"
                  )
                ),
                response = list(
                  messageGroups = list(
                    list(
                      message = list(
                        plainTextMessage = list(
                          value = "string"
                        ),
                        customPayload = list(
                          value = "string"
                        ),
                        ssmlMessage = list(
                          value = "string"
                        ),
                        imageResponseCard = list(
                          title = "string",
                          subtitle = "string",
                          imageUrl = "string",
                          buttons = list(
                            list(
                              text = "string",
                              value = "string"
                            )
                          )
                        )
                      ),
                      variations = list(
                        list(
                          plainTextMessage = list(
                            value = "string"
                          ),
                          customPayload = list(
                            value = "string"
                          ),
                          ssmlMessage = list(
                            value = "string"
                          ),
                          imageResponseCard = list(
                            title = "string",
                            subtitle = "string",
                            imageUrl = "string",
                            buttons = list(
                              list(
                                text = "string",
                                value = "string"
                              )
                            )
                          )
                        )
                      )
                    )
                  ),
                  allowInterrupt = TRUE|FALSE
                )
              )
            ),
            failureResponse = list(
              messageGroups = list(
                list(
                  message = list(
                    plainTextMessage = list(
                      value = "string"
                    ),
                    customPayload = list(
                      value = "string"
                    ),
                    ssmlMessage = list(
                      value = "string"
                    ),
                    imageResponseCard = list(
                      title = "string",
                      subtitle = "string",
                      imageUrl = "string",
                      buttons = list(
                        list(
                          text = "string",
                          value = "string"
                        )
                      )
                    )
                  ),
                  variations = list(
                    list(
                      plainTextMessage = list(
                        value = "string"
                      ),
                      customPayload = list(
                        value = "string"
                      ),
                      ssmlMessage = list(
                        value = "string"
                      ),
                      imageResponseCard = list(
                        title = "string",
                        subtitle = "string",
                        imageUrl = "string",
                        buttons = list(
                          list(
                            text = "string",
                            value = "string"
                          )
                        )
                      )
                    )
                  )
                )
              ),
              allowInterrupt = TRUE|FALSE
            ),
            failureNextStep = list(
              dialogAction = list(
                type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
                slotToElicit = "string",
                suppressNextMessage = TRUE|FALSE
              ),
              intent = list(
                name = "string",
                slots = list(
                  list(
                    shape = "Scalar"|"List",
                    value = list(
                      interpretedValue = "string"
                    ),
                    values = list(
                      list()
                    )
                  )
                )
              ),
              sessionAttributes = list(
                "string"
              )
            ),
            failureConditional = list(
              active = TRUE|FALSE,
              conditionalBranches = list(
                list(
                  name = "string",
                  condition = list(
                    expressionString = "string"
                  ),
                  nextStep = list(
                    dialogAction = list(
                      type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
                      slotToElicit = "string",
                      suppressNextMessage = TRUE|FALSE
                    ),
                    intent = list(
                      name = "string",
                      slots = list(
                        list(
                          shape = "Scalar"|"List",
                          value = list(
                            interpretedValue = "string"
                          ),
                          values = list(
                            list()
                          )
                        )
                      )
                    ),
                    sessionAttributes = list(
                      "string"
                    )
                  ),
                  response = list(
                    messageGroups = list(
                      list(
                        message = list(
                          plainTextMessage = list(
                            value = "string"
                          ),
                          customPayload = list(
                            value = "string"
                          ),
                          ssmlMessage = list(
                            value = "string"
                          ),
                          imageResponseCard = list(
                            title = "string",
                            subtitle = "string",
                            imageUrl = "string",
                            buttons = list(
                              list(
                                text = "string",
                                value = "string"
                              )
                            )
                          )
                        ),
                        variations = list(
                          list(
                            plainTextMessage = list(
                              value = "string"
                            ),
                            customPayload = list(
                              value = "string"
                            ),
                            ssmlMessage = list(
                              value = "string"
                            ),
                            imageResponseCard = list(
                              title = "string",
                              subtitle = "string",
                              imageUrl = "string",
                              buttons = list(
                                list(
                                  text = "string",
                                  value = "string"
                                )
                              )
                            )
                          )
                        )
                      )
                    ),
                    allowInterrupt = TRUE|FALSE
                  )
                )
              ),
              defaultBranch = list(
                nextStep = list(
                  dialogAction = list(
                    type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
                    slotToElicit = "string",
                    suppressNextMessage = TRUE|FALSE
                  ),
                  intent = list(
                    name = "string",
                    slots = list(
                      list(
                        shape = "Scalar"|"List",
                        value = list(
                          interpretedValue = "string"
                        ),
                        values = list(
                          list()
                        )
                      )
                    )
                  ),
                  sessionAttributes = list(
                    "string"
                  )
                ),
                response = list(
                  messageGroups = list(
                    list(
                      message = list(
                        plainTextMessage = list(
                          value = "string"
                        ),
                        customPayload = list(
                          value = "string"
                        ),
                        ssmlMessage = list(
                          value = "string"
                        ),
                        imageResponseCard = list(
                          title = "string",
                          subtitle = "string",
                          imageUrl = "string",
                          buttons = list(
                            list(
                              text = "string",
                              value = "string"
                            )
                          )
                        )
                      ),
                      variations = list(
                        list(
                          plainTextMessage = list(
                            value = "string"
                          ),
                          customPayload = list(
                            value = "string"
                          ),
                          ssmlMessage = list(
                            value = "string"
                          ),
                          imageResponseCard = list(
                            title = "string",
                            subtitle = "string",
                            imageUrl = "string",
                            buttons = list(
                              list(
                                text = "string",
                                value = "string"
                              )
                            )
                          )
                        )
                      )
                    )
                  ),
                  allowInterrupt = TRUE|FALSE
                )
              )
            ),
            timeoutResponse = list(
              messageGroups = list(
                list(
                  message = list(
                    plainTextMessage = list(
                      value = "string"
                    ),
                    customPayload = list(
                      value = "string"
                    ),
                    ssmlMessage = list(
                      value = "string"
                    ),
                    imageResponseCard = list(
                      title = "string",
                      subtitle = "string",
                      imageUrl = "string",
                      buttons = list(
                        list(
                          text = "string",
                          value = "string"
                        )
                      )
                    )
                  ),
                  variations = list(
                    list(
                      plainTextMessage = list(
                        value = "string"
                      ),
                      customPayload = list(
                        value = "string"
                      ),
                      ssmlMessage = list(
                        value = "string"
                      ),
                      imageResponseCard = list(
                        title = "string",
                        subtitle = "string",
                        imageUrl = "string",
                        buttons = list(
                          list(
                            text = "string",
                            value = "string"
                          )
                        )
                      )
                    )
                  )
                )
              ),
              allowInterrupt = TRUE|FALSE
            ),
            timeoutNextStep = list(
              dialogAction = list(
                type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
                slotToElicit = "string",
                suppressNextMessage = TRUE|FALSE
              ),
              intent = list(
                name = "string",
                slots = list(
                  list(
                    shape = "Scalar"|"List",
                    value = list(
                      interpretedValue = "string"
                    ),
                    values = list(
                      list()
                    )
                  )
                )
              ),
              sessionAttributes = list(
                "string"
              )
            ),
            timeoutConditional = list(
              active = TRUE|FALSE,
              conditionalBranches = list(
                list(
                  name = "string",
                  condition = list(
                    expressionString = "string"
                  ),
                  nextStep = list(
                    dialogAction = list(
                      type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
                      slotToElicit = "string",
                      suppressNextMessage = TRUE|FALSE
                    ),
                    intent = list(
                      name = "string",
                      slots = list(
                        list(
                          shape = "Scalar"|"List",
                          value = list(
                            interpretedValue = "string"
                          ),
                          values = list(
                            list()
                          )
                        )
                      )
                    ),
                    sessionAttributes = list(
                      "string"
                    )
                  ),
                  response = list(
                    messageGroups = list(
                      list(
                        message = list(
                          plainTextMessage = list(
                            value = "string"
                          ),
                          customPayload = list(
                            value = "string"
                          ),
                          ssmlMessage = list(
                            value = "string"
                          ),
                          imageResponseCard = list(
                            title = "string",
                            subtitle = "string",
                            imageUrl = "string",
                            buttons = list(
                              list(
                                text = "string",
                                value = "string"
                              )
                            )
                          )
                        ),
                        variations = list(
                          list(
                            plainTextMessage = list(
                              value = "string"
                            ),
                            customPayload = list(
                              value = "string"
                            ),
                            ssmlMessage = list(
                              value = "string"
                            ),
                            imageResponseCard = list(
                              title = "string",
                              subtitle = "string",
                              imageUrl = "string",
                              buttons = list(
                                list(
                                  text = "string",
                                  value = "string"
                                )
                              )
                            )
                          )
                        )
                      )
                    ),
                    allowInterrupt = TRUE|FALSE
                  )
                )
              ),
              defaultBranch = list(
                nextStep = list(
                  dialogAction = list(
                    type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
                    slotToElicit = "string",
                    suppressNextMessage = TRUE|FALSE
                  ),
                  intent = list(
                    name = "string",
                    slots = list(
                      list(
                        shape = "Scalar"|"List",
                        value = list(
                          interpretedValue = "string"
                        ),
                        values = list(
                          list()
                        )
                      )
                    )
                  ),
                  sessionAttributes = list(
                    "string"
                  )
                ),
                response = list(
                  messageGroups = list(
                    list(
                      message = list(
                        plainTextMessage = list(
                          value = "string"
                        ),
                        customPayload = list(
                          value = "string"
                        ),
                        ssmlMessage = list(
                          value = "string"
                        ),
                        imageResponseCard = list(
                          title = "string",
                          subtitle = "string",
                          imageUrl = "string",
                          buttons = list(
                            list(
                              text = "string",
                              value = "string"
                            )
                          )
                        )
                      ),
                      variations = list(
                        list(
                          plainTextMessage = list(
                            value = "string"
                          ),
                          customPayload = list(
                            value = "string"
                          ),
                          ssmlMessage = list(
                            value = "string"
                          ),
                          imageResponseCard = list(
                            title = "string",
                            subtitle = "string",
                            imageUrl = "string",
                            buttons = list(
                              list(
                                text = "string",
                                value = "string"
                              )
                            )
                          )
                        )
                      )
                    )
                  ),
                  allowInterrupt = TRUE|FALSE
                )
              )
            )
          )
        )
      )
    )

### Request syntax

    svc$update_intent(
      intentId = "string",
      intentName = "string",
      description = "string",
      parentIntentSignature = "string",
      sampleUtterances = list(
        list(
          utterance = "string"
        )
      ),
      dialogCodeHook = list(
        enabled = TRUE|FALSE
      ),
      fulfillmentCodeHook = list(
        enabled = TRUE|FALSE,
        postFulfillmentStatusSpecification = list(
          successResponse = list(
            messageGroups = list(
              list(
                message = list(
                  plainTextMessage = list(
                    value = "string"
                  ),
                  customPayload = list(
                    value = "string"
                  ),
                  ssmlMessage = list(
                    value = "string"
                  ),
                  imageResponseCard = list(
                    title = "string",
                    subtitle = "string",
                    imageUrl = "string",
                    buttons = list(
                      list(
                        text = "string",
                        value = "string"
                      )
                    )
                  )
                ),
                variations = list(
                  list(
                    plainTextMessage = list(
                      value = "string"
                    ),
                    customPayload = list(
                      value = "string"
                    ),
                    ssmlMessage = list(
                      value = "string"
                    ),
                    imageResponseCard = list(
                      title = "string",
                      subtitle = "string",
                      imageUrl = "string",
                      buttons = list(
                        list(
                          text = "string",
                          value = "string"
                        )
                      )
                    )
                  )
                )
              )
            ),
            allowInterrupt = TRUE|FALSE
          ),
          failureResponse = list(
            messageGroups = list(
              list(
                message = list(
                  plainTextMessage = list(
                    value = "string"
                  ),
                  customPayload = list(
                    value = "string"
                  ),
                  ssmlMessage = list(
                    value = "string"
                  ),
                  imageResponseCard = list(
                    title = "string",
                    subtitle = "string",
                    imageUrl = "string",
                    buttons = list(
                      list(
                        text = "string",
                        value = "string"
                      )
                    )
                  )
                ),
                variations = list(
                  list(
                    plainTextMessage = list(
                      value = "string"
                    ),
                    customPayload = list(
                      value = "string"
                    ),
                    ssmlMessage = list(
                      value = "string"
                    ),
                    imageResponseCard = list(
                      title = "string",
                      subtitle = "string",
                      imageUrl = "string",
                      buttons = list(
                        list(
                          text = "string",
                          value = "string"
                        )
                      )
                    )
                  )
                )
              )
            ),
            allowInterrupt = TRUE|FALSE
          ),
          timeoutResponse = list(
            messageGroups = list(
              list(
                message = list(
                  plainTextMessage = list(
                    value = "string"
                  ),
                  customPayload = list(
                    value = "string"
                  ),
                  ssmlMessage = list(
                    value = "string"
                  ),
                  imageResponseCard = list(
                    title = "string",
                    subtitle = "string",
                    imageUrl = "string",
                    buttons = list(
                      list(
                        text = "string",
                        value = "string"
                      )
                    )
                  )
                ),
                variations = list(
                  list(
                    plainTextMessage = list(
                      value = "string"
                    ),
                    customPayload = list(
                      value = "string"
                    ),
                    ssmlMessage = list(
                      value = "string"
                    ),
                    imageResponseCard = list(
                      title = "string",
                      subtitle = "string",
                      imageUrl = "string",
                      buttons = list(
                        list(
                          text = "string",
                          value = "string"
                        )
                      )
                    )
                  )
                )
              )
            ),
            allowInterrupt = TRUE|FALSE
          ),
          successNextStep = list(
            dialogAction = list(
              type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
              slotToElicit = "string",
              suppressNextMessage = TRUE|FALSE
            ),
            intent = list(
              name = "string",
              slots = list(
                list(
                  shape = "Scalar"|"List",
                  value = list(
                    interpretedValue = "string"
                  ),
                  values = list(
                    list()
                  )
                )
              )
            ),
            sessionAttributes = list(
              "string"
            )
          ),
          successConditional = list(
            active = TRUE|FALSE,
            conditionalBranches = list(
              list(
                name = "string",
                condition = list(
                  expressionString = "string"
                ),
                nextStep = list(
                  dialogAction = list(
                    type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
                    slotToElicit = "string",
                    suppressNextMessage = TRUE|FALSE
                  ),
                  intent = list(
                    name = "string",
                    slots = list(
                      list(
                        shape = "Scalar"|"List",
                        value = list(
                          interpretedValue = "string"
                        ),
                        values = list(
                          list()
                        )
                      )
                    )
                  ),
                  sessionAttributes = list(
                    "string"
                  )
                ),
                response = list(
                  messageGroups = list(
                    list(
                      message = list(
                        plainTextMessage = list(
                          value = "string"
                        ),
                        customPayload = list(
                          value = "string"
                        ),
                        ssmlMessage = list(
                          value = "string"
                        ),
                        imageResponseCard = list(
                          title = "string",
                          subtitle = "string",
                          imageUrl = "string",
                          buttons = list(
                            list(
                              text = "string",
                              value = "string"
                            )
                          )
                        )
                      ),
                      variations = list(
                        list(
                          plainTextMessage = list(
                            value = "string"
                          ),
                          customPayload = list(
                            value = "string"
                          ),
                          ssmlMessage = list(
                            value = "string"
                          ),
                          imageResponseCard = list(
                            title = "string",
                            subtitle = "string",
                            imageUrl = "string",
                            buttons = list(
                              list(
                                text = "string",
                                value = "string"
                              )
                            )
                          )
                        )
                      )
                    )
                  ),
                  allowInterrupt = TRUE|FALSE
                )
              )
            ),
            defaultBranch = list(
              nextStep = list(
                dialogAction = list(
                  type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
                  slotToElicit = "string",
                  suppressNextMessage = TRUE|FALSE
                ),
                intent = list(
                  name = "string",
                  slots = list(
                    list(
                      shape = "Scalar"|"List",
                      value = list(
                        interpretedValue = "string"
                      ),
                      values = list(
                        list()
                      )
                    )
                  )
                ),
                sessionAttributes = list(
                  "string"
                )
              ),
              response = list(
                messageGroups = list(
                  list(
                    message = list(
                      plainTextMessage = list(
                        value = "string"
                      ),
                      customPayload = list(
                        value = "string"
                      ),
                      ssmlMessage = list(
                        value = "string"
                      ),
                      imageResponseCard = list(
                        title = "string",
                        subtitle = "string",
                        imageUrl = "string",
                        buttons = list(
                          list(
                            text = "string",
                            value = "string"
                          )
                        )
                      )
                    ),
                    variations = list(
                      list(
                        plainTextMessage = list(
                          value = "string"
                        ),
                        customPayload = list(
                          value = "string"
                        ),
                        ssmlMessage = list(
                          value = "string"
                        ),
                        imageResponseCard = list(
                          title = "string",
                          subtitle = "string",
                          imageUrl = "string",
                          buttons = list(
                            list(
                              text = "string",
                              value = "string"
                            )
                          )
                        )
                      )
                    )
                  )
                ),
                allowInterrupt = TRUE|FALSE
              )
            )
          ),
          failureNextStep = list(
            dialogAction = list(
              type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
              slotToElicit = "string",
              suppressNextMessage = TRUE|FALSE
            ),
            intent = list(
              name = "string",
              slots = list(
                list(
                  shape = "Scalar"|"List",
                  value = list(
                    interpretedValue = "string"
                  ),
                  values = list(
                    list()
                  )
                )
              )
            ),
            sessionAttributes = list(
              "string"
            )
          ),
          failureConditional = list(
            active = TRUE|FALSE,
            conditionalBranches = list(
              list(
                name = "string",
                condition = list(
                  expressionString = "string"
                ),
                nextStep = list(
                  dialogAction = list(
                    type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
                    slotToElicit = "string",
                    suppressNextMessage = TRUE|FALSE
                  ),
                  intent = list(
                    name = "string",
                    slots = list(
                      list(
                        shape = "Scalar"|"List",
                        value = list(
                          interpretedValue = "string"
                        ),
                        values = list(
                          list()
                        )
                      )
                    )
                  ),
                  sessionAttributes = list(
                    "string"
                  )
                ),
                response = list(
                  messageGroups = list(
                    list(
                      message = list(
                        plainTextMessage = list(
                          value = "string"
                        ),
                        customPayload = list(
                          value = "string"
                        ),
                        ssmlMessage = list(
                          value = "string"
                        ),
                        imageResponseCard = list(
                          title = "string",
                          subtitle = "string",
                          imageUrl = "string",
                          buttons = list(
                            list(
                              text = "string",
                              value = "string"
                            )
                          )
                        )
                      ),
                      variations = list(
                        list(
                          plainTextMessage = list(
                            value = "string"
                          ),
                          customPayload = list(
                            value = "string"
                          ),
                          ssmlMessage = list(
                            value = "string"
                          ),
                          imageResponseCard = list(
                            title = "string",
                            subtitle = "string",
                            imageUrl = "string",
                            buttons = list(
                              list(
                                text = "string",
                                value = "string"
                              )
                            )
                          )
                        )
                      )
                    )
                  ),
                  allowInterrupt = TRUE|FALSE
                )
              )
            ),
            defaultBranch = list(
              nextStep = list(
                dialogAction = list(
                  type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
                  slotToElicit = "string",
                  suppressNextMessage = TRUE|FALSE
                ),
                intent = list(
                  name = "string",
                  slots = list(
                    list(
                      shape = "Scalar"|"List",
                      value = list(
                        interpretedValue = "string"
                      ),
                      values = list(
                        list()
                      )
                    )
                  )
                ),
                sessionAttributes = list(
                  "string"
                )
              ),
              response = list(
                messageGroups = list(
                  list(
                    message = list(
                      plainTextMessage = list(
                        value = "string"
                      ),
                      customPayload = list(
                        value = "string"
                      ),
                      ssmlMessage = list(
                        value = "string"
                      ),
                      imageResponseCard = list(
                        title = "string",
                        subtitle = "string",
                        imageUrl = "string",
                        buttons = list(
                          list(
                            text = "string",
                            value = "string"
                          )
                        )
                      )
                    ),
                    variations = list(
                      list(
                        plainTextMessage = list(
                          value = "string"
                        ),
                        customPayload = list(
                          value = "string"
                        ),
                        ssmlMessage = list(
                          value = "string"
                        ),
                        imageResponseCard = list(
                          title = "string",
                          subtitle = "string",
                          imageUrl = "string",
                          buttons = list(
                            list(
                              text = "string",
                              value = "string"
                            )
                          )
                        )
                      )
                    )
                  )
                ),
                allowInterrupt = TRUE|FALSE
              )
            )
          ),
          timeoutNextStep = list(
            dialogAction = list(
              type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
              slotToElicit = "string",
              suppressNextMessage = TRUE|FALSE
            ),
            intent = list(
              name = "string",
              slots = list(
                list(
                  shape = "Scalar"|"List",
                  value = list(
                    interpretedValue = "string"
                  ),
                  values = list(
                    list()
                  )
                )
              )
            ),
            sessionAttributes = list(
              "string"
            )
          ),
          timeoutConditional = list(
            active = TRUE|FALSE,
            conditionalBranches = list(
              list(
                name = "string",
                condition = list(
                  expressionString = "string"
                ),
                nextStep = list(
                  dialogAction = list(
                    type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
                    slotToElicit = "string",
                    suppressNextMessage = TRUE|FALSE
                  ),
                  intent = list(
                    name = "string",
                    slots = list(
                      list(
                        shape = "Scalar"|"List",
                        value = list(
                          interpretedValue = "string"
                        ),
                        values = list(
                          list()
                        )
                      )
                    )
                  ),
                  sessionAttributes = list(
                    "string"
                  )
                ),
                response = list(
                  messageGroups = list(
                    list(
                      message = list(
                        plainTextMessage = list(
                          value = "string"
                        ),
                        customPayload = list(
                          value = "string"
                        ),
                        ssmlMessage = list(
                          value = "string"
                        ),
                        imageResponseCard = list(
                          title = "string",
                          subtitle = "string",
                          imageUrl = "string",
                          buttons = list(
                            list(
                              text = "string",
                              value = "string"
                            )
                          )
                        )
                      ),
                      variations = list(
                        list(
                          plainTextMessage = list(
                            value = "string"
                          ),
                          customPayload = list(
                            value = "string"
                          ),
                          ssmlMessage = list(
                            value = "string"
                          ),
                          imageResponseCard = list(
                            title = "string",
                            subtitle = "string",
                            imageUrl = "string",
                            buttons = list(
                              list(
                                text = "string",
                                value = "string"
                              )
                            )
                          )
                        )
                      )
                    )
                  ),
                  allowInterrupt = TRUE|FALSE
                )
              )
            ),
            defaultBranch = list(
              nextStep = list(
                dialogAction = list(
                  type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
                  slotToElicit = "string",
                  suppressNextMessage = TRUE|FALSE
                ),
                intent = list(
                  name = "string",
                  slots = list(
                    list(
                      shape = "Scalar"|"List",
                      value = list(
                        interpretedValue = "string"
                      ),
                      values = list(
                        list()
                      )
                    )
                  )
                ),
                sessionAttributes = list(
                  "string"
                )
              ),
              response = list(
                messageGroups = list(
                  list(
                    message = list(
                      plainTextMessage = list(
                        value = "string"
                      ),
                      customPayload = list(
                        value = "string"
                      ),
                      ssmlMessage = list(
                        value = "string"
                      ),
                      imageResponseCard = list(
                        title = "string",
                        subtitle = "string",
                        imageUrl = "string",
                        buttons = list(
                          list(
                            text = "string",
                            value = "string"
                          )
                        )
                      )
                    ),
                    variations = list(
                      list(
                        plainTextMessage = list(
                          value = "string"
                        ),
                        customPayload = list(
                          value = "string"
                        ),
                        ssmlMessage = list(
                          value = "string"
                        ),
                        imageResponseCard = list(
                          title = "string",
                          subtitle = "string",
                          imageUrl = "string",
                          buttons = list(
                            list(
                              text = "string",
                              value = "string"
                            )
                          )
                        )
                      )
                    )
                  )
                ),
                allowInterrupt = TRUE|FALSE
              )
            )
          )
        ),
        fulfillmentUpdatesSpecification = list(
          active = TRUE|FALSE,
          startResponse = list(
            delayInSeconds = 123,
            messageGroups = list(
              list(
                message = list(
                  plainTextMessage = list(
                    value = "string"
                  ),
                  customPayload = list(
                    value = "string"
                  ),
                  ssmlMessage = list(
                    value = "string"
                  ),
                  imageResponseCard = list(
                    title = "string",
                    subtitle = "string",
                    imageUrl = "string",
                    buttons = list(
                      list(
                        text = "string",
                        value = "string"
                      )
                    )
                  )
                ),
                variations = list(
                  list(
                    plainTextMessage = list(
                      value = "string"
                    ),
                    customPayload = list(
                      value = "string"
                    ),
                    ssmlMessage = list(
                      value = "string"
                    ),
                    imageResponseCard = list(
                      title = "string",
                      subtitle = "string",
                      imageUrl = "string",
                      buttons = list(
                        list(
                          text = "string",
                          value = "string"
                        )
                      )
                    )
                  )
                )
              )
            ),
            allowInterrupt = TRUE|FALSE
          ),
          updateResponse = list(
            frequencyInSeconds = 123,
            messageGroups = list(
              list(
                message = list(
                  plainTextMessage = list(
                    value = "string"
                  ),
                  customPayload = list(
                    value = "string"
                  ),
                  ssmlMessage = list(
                    value = "string"
                  ),
                  imageResponseCard = list(
                    title = "string",
                    subtitle = "string",
                    imageUrl = "string",
                    buttons = list(
                      list(
                        text = "string",
                        value = "string"
                      )
                    )
                  )
                ),
                variations = list(
                  list(
                    plainTextMessage = list(
                      value = "string"
                    ),
                    customPayload = list(
                      value = "string"
                    ),
                    ssmlMessage = list(
                      value = "string"
                    ),
                    imageResponseCard = list(
                      title = "string",
                      subtitle = "string",
                      imageUrl = "string",
                      buttons = list(
                        list(
                          text = "string",
                          value = "string"
                        )
                      )
                    )
                  )
                )
              )
            ),
            allowInterrupt = TRUE|FALSE
          ),
          timeoutInSeconds = 123
        ),
        active = TRUE|FALSE
      ),
      slotPriorities = list(
        list(
          priority = 123,
          slotId = "string"
        )
      ),
      intentConfirmationSetting = list(
        promptSpecification = list(
          messageGroups = list(
            list(
              message = list(
                plainTextMessage = list(
                  value = "string"
                ),
                customPayload = list(
                  value = "string"
                ),
                ssmlMessage = list(
                  value = "string"
                ),
                imageResponseCard = list(
                  title = "string",
                  subtitle = "string",
                  imageUrl = "string",
                  buttons = list(
                    list(
                      text = "string",
                      value = "string"
                    )
                  )
                )
              ),
              variations = list(
                list(
                  plainTextMessage = list(
                    value = "string"
                  ),
                  customPayload = list(
                    value = "string"
                  ),
                  ssmlMessage = list(
                    value = "string"
                  ),
                  imageResponseCard = list(
                    title = "string",
                    subtitle = "string",
                    imageUrl = "string",
                    buttons = list(
                      list(
                        text = "string",
                        value = "string"
                      )
                    )
                  )
                )
              )
            )
          ),
          maxRetries = 123,
          allowInterrupt = TRUE|FALSE,
          messageSelectionStrategy = "Random"|"Ordered",
          promptAttemptsSpecification = list(
            list(
              allowInterrupt = TRUE|FALSE,
              allowedInputTypes = list(
                allowAudioInput = TRUE|FALSE,
                allowDTMFInput = TRUE|FALSE
              ),
              audioAndDTMFInputSpecification = list(
                startTimeoutMs = 123,
                audioSpecification = list(
                  maxLengthMs = 123,
                  endTimeoutMs = 123
                ),
                dtmfSpecification = list(
                  maxLength = 123,
                  endTimeoutMs = 123,
                  deletionCharacter = "string",
                  endCharacter = "string"
                )
              ),
              textInputSpecification = list(
                startTimeoutMs = 123
              )
            )
          )
        ),
        declinationResponse = list(
          messageGroups = list(
            list(
              message = list(
                plainTextMessage = list(
                  value = "string"
                ),
                customPayload = list(
                  value = "string"
                ),
                ssmlMessage = list(
                  value = "string"
                ),
                imageResponseCard = list(
                  title = "string",
                  subtitle = "string",
                  imageUrl = "string",
                  buttons = list(
                    list(
                      text = "string",
                      value = "string"
                    )
                  )
                )
              ),
              variations = list(
                list(
                  plainTextMessage = list(
                    value = "string"
                  ),
                  customPayload = list(
                    value = "string"
                  ),
                  ssmlMessage = list(
                    value = "string"
                  ),
                  imageResponseCard = list(
                    title = "string",
                    subtitle = "string",
                    imageUrl = "string",
                    buttons = list(
                      list(
                        text = "string",
                        value = "string"
                      )
                    )
                  )
                )
              )
            )
          ),
          allowInterrupt = TRUE|FALSE
        ),
        active = TRUE|FALSE,
        confirmationResponse = list(
          messageGroups = list(
            list(
              message = list(
                plainTextMessage = list(
                  value = "string"
                ),
                customPayload = list(
                  value = "string"
                ),
                ssmlMessage = list(
                  value = "string"
                ),
                imageResponseCard = list(
                  title = "string",
                  subtitle = "string",
                  imageUrl = "string",
                  buttons = list(
                    list(
                      text = "string",
                      value = "string"
                    )
                  )
                )
              ),
              variations = list(
                list(
                  plainTextMessage = list(
                    value = "string"
                  ),
                  customPayload = list(
                    value = "string"
                  ),
                  ssmlMessage = list(
                    value = "string"
                  ),
                  imageResponseCard = list(
                    title = "string",
                    subtitle = "string",
                    imageUrl = "string",
                    buttons = list(
                      list(
                        text = "string",
                        value = "string"
                      )
                    )
                  )
                )
              )
            )
          ),
          allowInterrupt = TRUE|FALSE
        ),
        confirmationNextStep = list(
          dialogAction = list(
            type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
            slotToElicit = "string",
            suppressNextMessage = TRUE|FALSE
          ),
          intent = list(
            name = "string",
            slots = list(
              list(
                shape = "Scalar"|"List",
                value = list(
                  interpretedValue = "string"
                ),
                values = list(
                  list()
                )
              )
            )
          ),
          sessionAttributes = list(
            "string"
          )
        ),
        confirmationConditional = list(
          active = TRUE|FALSE,
          conditionalBranches = list(
            list(
              name = "string",
              condition = list(
                expressionString = "string"
              ),
              nextStep = list(
                dialogAction = list(
                  type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
                  slotToElicit = "string",
                  suppressNextMessage = TRUE|FALSE
                ),
                intent = list(
                  name = "string",
                  slots = list(
                    list(
                      shape = "Scalar"|"List",
                      value = list(
                        interpretedValue = "string"
                      ),
                      values = list(
                        list()
                      )
                    )
                  )
                ),
                sessionAttributes = list(
                  "string"
                )
              ),
              response = list(
                messageGroups = list(
                  list(
                    message = list(
                      plainTextMessage = list(
                        value = "string"
                      ),
                      customPayload = list(
                        value = "string"
                      ),
                      ssmlMessage = list(
                        value = "string"
                      ),
                      imageResponseCard = list(
                        title = "string",
                        subtitle = "string",
                        imageUrl = "string",
                        buttons = list(
                          list(
                            text = "string",
                            value = "string"
                          )
                        )
                      )
                    ),
                    variations = list(
                      list(
                        plainTextMessage = list(
                          value = "string"
                        ),
                        customPayload = list(
                          value = "string"
                        ),
                        ssmlMessage = list(
                          value = "string"
                        ),
                        imageResponseCard = list(
                          title = "string",
                          subtitle = "string",
                          imageUrl = "string",
                          buttons = list(
                            list(
                              text = "string",
                              value = "string"
                            )
                          )
                        )
                      )
                    )
                  )
                ),
                allowInterrupt = TRUE|FALSE
              )
            )
          ),
          defaultBranch = list(
            nextStep = list(
              dialogAction = list(
                type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
                slotToElicit = "string",
                suppressNextMessage = TRUE|FALSE
              ),
              intent = list(
                name = "string",
                slots = list(
                  list(
                    shape = "Scalar"|"List",
                    value = list(
                      interpretedValue = "string"
                    ),
                    values = list(
                      list()
                    )
                  )
                )
              ),
              sessionAttributes = list(
                "string"
              )
            ),
            response = list(
              messageGroups = list(
                list(
                  message = list(
                    plainTextMessage = list(
                      value = "string"
                    ),
                    customPayload = list(
                      value = "string"
                    ),
                    ssmlMessage = list(
                      value = "string"
                    ),
                    imageResponseCard = list(
                      title = "string",
                      subtitle = "string",
                      imageUrl = "string",
                      buttons = list(
                        list(
                          text = "string",
                          value = "string"
                        )
                      )
                    )
                  ),
                  variations = list(
                    list(
                      plainTextMessage = list(
                        value = "string"
                      ),
                      customPayload = list(
                        value = "string"
                      ),
                      ssmlMessage = list(
                        value = "string"
                      ),
                      imageResponseCard = list(
                        title = "string",
                        subtitle = "string",
                        imageUrl = "string",
                        buttons = list(
                          list(
                            text = "string",
                            value = "string"
                          )
                        )
                      )
                    )
                  )
                )
              ),
              allowInterrupt = TRUE|FALSE
            )
          )
        ),
        declinationNextStep = list(
          dialogAction = list(
            type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
            slotToElicit = "string",
            suppressNextMessage = TRUE|FALSE
          ),
          intent = list(
            name = "string",
            slots = list(
              list(
                shape = "Scalar"|"List",
                value = list(
                  interpretedValue = "string"
                ),
                values = list(
                  list()
                )
              )
            )
          ),
          sessionAttributes = list(
            "string"
          )
        ),
        declinationConditional = list(
          active = TRUE|FALSE,
          conditionalBranches = list(
            list(
              name = "string",
              condition = list(
                expressionString = "string"
              ),
              nextStep = list(
                dialogAction = list(
                  type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
                  slotToElicit = "string",
                  suppressNextMessage = TRUE|FALSE
                ),
                intent = list(
                  name = "string",
                  slots = list(
                    list(
                      shape = "Scalar"|"List",
                      value = list(
                        interpretedValue = "string"
                      ),
                      values = list(
                        list()
                      )
                    )
                  )
                ),
                sessionAttributes = list(
                  "string"
                )
              ),
              response = list(
                messageGroups = list(
                  list(
                    message = list(
                      plainTextMessage = list(
                        value = "string"
                      ),
                      customPayload = list(
                        value = "string"
                      ),
                      ssmlMessage = list(
                        value = "string"
                      ),
                      imageResponseCard = list(
                        title = "string",
                        subtitle = "string",
                        imageUrl = "string",
                        buttons = list(
                          list(
                            text = "string",
                            value = "string"
                          )
                        )
                      )
                    ),
                    variations = list(
                      list(
                        plainTextMessage = list(
                          value = "string"
                        ),
                        customPayload = list(
                          value = "string"
                        ),
                        ssmlMessage = list(
                          value = "string"
                        ),
                        imageResponseCard = list(
                          title = "string",
                          subtitle = "string",
                          imageUrl = "string",
                          buttons = list(
                            list(
                              text = "string",
                              value = "string"
                            )
                          )
                        )
                      )
                    )
                  )
                ),
                allowInterrupt = TRUE|FALSE
              )
            )
          ),
          defaultBranch = list(
            nextStep = list(
              dialogAction = list(
                type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
                slotToElicit = "string",
                suppressNextMessage = TRUE|FALSE
              ),
              intent = list(
                name = "string",
                slots = list(
                  list(
                    shape = "Scalar"|"List",
                    value = list(
                      interpretedValue = "string"
                    ),
                    values = list(
                      list()
                    )
                  )
                )
              ),
              sessionAttributes = list(
                "string"
              )
            ),
            response = list(
              messageGroups = list(
                list(
                  message = list(
                    plainTextMessage = list(
                      value = "string"
                    ),
                    customPayload = list(
                      value = "string"
                    ),
                    ssmlMessage = list(
                      value = "string"
                    ),
                    imageResponseCard = list(
                      title = "string",
                      subtitle = "string",
                      imageUrl = "string",
                      buttons = list(
                        list(
                          text = "string",
                          value = "string"
                        )
                      )
                    )
                  ),
                  variations = list(
                    list(
                      plainTextMessage = list(
                        value = "string"
                      ),
                      customPayload = list(
                        value = "string"
                      ),
                      ssmlMessage = list(
                        value = "string"
                      ),
                      imageResponseCard = list(
                        title = "string",
                        subtitle = "string",
                        imageUrl = "string",
                        buttons = list(
                          list(
                            text = "string",
                            value = "string"
                          )
                        )
                      )
                    )
                  )
                )
              ),
              allowInterrupt = TRUE|FALSE
            )
          )
        ),
        failureResponse = list(
          messageGroups = list(
            list(
              message = list(
                plainTextMessage = list(
                  value = "string"
                ),
                customPayload = list(
                  value = "string"
                ),
                ssmlMessage = list(
                  value = "string"
                ),
                imageResponseCard = list(
                  title = "string",
                  subtitle = "string",
                  imageUrl = "string",
                  buttons = list(
                    list(
                      text = "string",
                      value = "string"
                    )
                  )
                )
              ),
              variations = list(
                list(
                  plainTextMessage = list(
                    value = "string"
                  ),
                  customPayload = list(
                    value = "string"
                  ),
                  ssmlMessage = list(
                    value = "string"
                  ),
                  imageResponseCard = list(
                    title = "string",
                    subtitle = "string",
                    imageUrl = "string",
                    buttons = list(
                      list(
                        text = "string",
                        value = "string"
                      )
                    )
                  )
                )
              )
            )
          ),
          allowInterrupt = TRUE|FALSE
        ),
        failureNextStep = list(
          dialogAction = list(
            type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
            slotToElicit = "string",
            suppressNextMessage = TRUE|FALSE
          ),
          intent = list(
            name = "string",
            slots = list(
              list(
                shape = "Scalar"|"List",
                value = list(
                  interpretedValue = "string"
                ),
                values = list(
                  list()
                )
              )
            )
          ),
          sessionAttributes = list(
            "string"
          )
        ),
        failureConditional = list(
          active = TRUE|FALSE,
          conditionalBranches = list(
            list(
              name = "string",
              condition = list(
                expressionString = "string"
              ),
              nextStep = list(
                dialogAction = list(
                  type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
                  slotToElicit = "string",
                  suppressNextMessage = TRUE|FALSE
                ),
                intent = list(
                  name = "string",
                  slots = list(
                    list(
                      shape = "Scalar"|"List",
                      value = list(
                        interpretedValue = "string"
                      ),
                      values = list(
                        list()
                      )
                    )
                  )
                ),
                sessionAttributes = list(
                  "string"
                )
              ),
              response = list(
                messageGroups = list(
                  list(
                    message = list(
                      plainTextMessage = list(
                        value = "string"
                      ),
                      customPayload = list(
                        value = "string"
                      ),
                      ssmlMessage = list(
                        value = "string"
                      ),
                      imageResponseCard = list(
                        title = "string",
                        subtitle = "string",
                        imageUrl = "string",
                        buttons = list(
                          list(
                            text = "string",
                            value = "string"
                          )
                        )
                      )
                    ),
                    variations = list(
                      list(
                        plainTextMessage = list(
                          value = "string"
                        ),
                        customPayload = list(
                          value = "string"
                        ),
                        ssmlMessage = list(
                          value = "string"
                        ),
                        imageResponseCard = list(
                          title = "string",
                          subtitle = "string",
                          imageUrl = "string",
                          buttons = list(
                            list(
                              text = "string",
                              value = "string"
                            )
                          )
                        )
                      )
                    )
                  )
                ),
                allowInterrupt = TRUE|FALSE
              )
            )
          ),
          defaultBranch = list(
            nextStep = list(
              dialogAction = list(
                type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
                slotToElicit = "string",
                suppressNextMessage = TRUE|FALSE
              ),
              intent = list(
                name = "string",
                slots = list(
                  list(
                    shape = "Scalar"|"List",
                    value = list(
                      interpretedValue = "string"
                    ),
                    values = list(
                      list()
                    )
                  )
                )
              ),
              sessionAttributes = list(
                "string"
              )
            ),
            response = list(
              messageGroups = list(
                list(
                  message = list(
                    plainTextMessage = list(
                      value = "string"
                    ),
                    customPayload = list(
                      value = "string"
                    ),
                    ssmlMessage = list(
                      value = "string"
                    ),
                    imageResponseCard = list(
                      title = "string",
                      subtitle = "string",
                      imageUrl = "string",
                      buttons = list(
                        list(
                          text = "string",
                          value = "string"
                        )
                      )
                    )
                  ),
                  variations = list(
                    list(
                      plainTextMessage = list(
                        value = "string"
                      ),
                      customPayload = list(
                        value = "string"
                      ),
                      ssmlMessage = list(
                        value = "string"
                      ),
                      imageResponseCard = list(
                        title = "string",
                        subtitle = "string",
                        imageUrl = "string",
                        buttons = list(
                          list(
                            text = "string",
                            value = "string"
                          )
                        )
                      )
                    )
                  )
                )
              ),
              allowInterrupt = TRUE|FALSE
            )
          )
        ),
        codeHook = list(
          enableCodeHookInvocation = TRUE|FALSE,
          active = TRUE|FALSE,
          invocationLabel = "string",
          postCodeHookSpecification = list(
            successResponse = list(
              messageGroups = list(
                list(
                  message = list(
                    plainTextMessage = list(
                      value = "string"
                    ),
                    customPayload = list(
                      value = "string"
                    ),
                    ssmlMessage = list(
                      value = "string"
                    ),
                    imageResponseCard = list(
                      title = "string",
                      subtitle = "string",
                      imageUrl = "string",
                      buttons = list(
                        list(
                          text = "string",
                          value = "string"
                        )
                      )
                    )
                  ),
                  variations = list(
                    list(
                      plainTextMessage = list(
                        value = "string"
                      ),
                      customPayload = list(
                        value = "string"
                      ),
                      ssmlMessage = list(
                        value = "string"
                      ),
                      imageResponseCard = list(
                        title = "string",
                        subtitle = "string",
                        imageUrl = "string",
                        buttons = list(
                          list(
                            text = "string",
                            value = "string"
                          )
                        )
                      )
                    )
                  )
                )
              ),
              allowInterrupt = TRUE|FALSE
            ),
            successNextStep = list(
              dialogAction = list(
                type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
                slotToElicit = "string",
                suppressNextMessage = TRUE|FALSE
              ),
              intent = list(
                name = "string",
                slots = list(
                  list(
                    shape = "Scalar"|"List",
                    value = list(
                      interpretedValue = "string"
                    ),
                    values = list(
                      list()
                    )
                  )
                )
              ),
              sessionAttributes = list(
                "string"
              )
            ),
            successConditional = list(
              active = TRUE|FALSE,
              conditionalBranches = list(
                list(
                  name = "string",
                  condition = list(
                    expressionString = "string"
                  ),
                  nextStep = list(
                    dialogAction = list(
                      type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
                      slotToElicit = "string",
                      suppressNextMessage = TRUE|FALSE
                    ),
                    intent = list(
                      name = "string",
                      slots = list(
                        list(
                          shape = "Scalar"|"List",
                          value = list(
                            interpretedValue = "string"
                          ),
                          values = list(
                            list()
                          )
                        )
                      )
                    ),
                    sessionAttributes = list(
                      "string"
                    )
                  ),
                  response = list(
                    messageGroups = list(
                      list(
                        message = list(
                          plainTextMessage = list(
                            value = "string"
                          ),
                          customPayload = list(
                            value = "string"
                          ),
                          ssmlMessage = list(
                            value = "string"
                          ),
                          imageResponseCard = list(
                            title = "string",
                            subtitle = "string",
                            imageUrl = "string",
                            buttons = list(
                              list(
                                text = "string",
                                value = "string"
                              )
                            )
                          )
                        ),
                        variations = list(
                          list(
                            plainTextMessage = list(
                              value = "string"
                            ),
                            customPayload = list(
                              value = "string"
                            ),
                            ssmlMessage = list(
                              value = "string"
                            ),
                            imageResponseCard = list(
                              title = "string",
                              subtitle = "string",
                              imageUrl = "string",
                              buttons = list(
                                list(
                                  text = "string",
                                  value = "string"
                                )
                              )
                            )
                          )
                        )
                      )
                    ),
                    allowInterrupt = TRUE|FALSE
                  )
                )
              ),
              defaultBranch = list(
                nextStep = list(
                  dialogAction = list(
                    type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
                    slotToElicit = "string",
                    suppressNextMessage = TRUE|FALSE
                  ),
                  intent = list(
                    name = "string",
                    slots = list(
                      list(
                        shape = "Scalar"|"List",
                        value = list(
                          interpretedValue = "string"
                        ),
                        values = list(
                          list()
                        )
                      )
                    )
                  ),
                  sessionAttributes = list(
                    "string"
                  )
                ),
                response = list(
                  messageGroups = list(
                    list(
                      message = list(
                        plainTextMessage = list(
                          value = "string"
                        ),
                        customPayload = list(
                          value = "string"
                        ),
                        ssmlMessage = list(
                          value = "string"
                        ),
                        imageResponseCard = list(
                          title = "string",
                          subtitle = "string",
                          imageUrl = "string",
                          buttons = list(
                            list(
                              text = "string",
                              value = "string"
                            )
                          )
                        )
                      ),
                      variations = list(
                        list(
                          plainTextMessage = list(
                            value = "string"
                          ),
                          customPayload = list(
                            value = "string"
                          ),
                          ssmlMessage = list(
                            value = "string"
                          ),
                          imageResponseCard = list(
                            title = "string",
                            subtitle = "string",
                            imageUrl = "string",
                            buttons = list(
                              list(
                                text = "string",
                                value = "string"
                              )
                            )
                          )
                        )
                      )
                    )
                  ),
                  allowInterrupt = TRUE|FALSE
                )
              )
            ),
            failureResponse = list(
              messageGroups = list(
                list(
                  message = list(
                    plainTextMessage = list(
                      value = "string"
                    ),
                    customPayload = list(
                      value = "string"
                    ),
                    ssmlMessage = list(
                      value = "string"
                    ),
                    imageResponseCard = list(
                      title = "string",
                      subtitle = "string",
                      imageUrl = "string",
                      buttons = list(
                        list(
                          text = "string",
                          value = "string"
                        )
                      )
                    )
                  ),
                  variations = list(
                    list(
                      plainTextMessage = list(
                        value = "string"
                      ),
                      customPayload = list(
                        value = "string"
                      ),
                      ssmlMessage = list(
                        value = "string"
                      ),
                      imageResponseCard = list(
                        title = "string",
                        subtitle = "string",
                        imageUrl = "string",
                        buttons = list(
                          list(
                            text = "string",
                            value = "string"
                          )
                        )
                      )
                    )
                  )
                )
              ),
              allowInterrupt = TRUE|FALSE
            ),
            failureNextStep = list(
              dialogAction = list(
                type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
                slotToElicit = "string",
                suppressNextMessage = TRUE|FALSE
              ),
              intent = list(
                name = "string",
                slots = list(
                  list(
                    shape = "Scalar"|"List",
                    value = list(
                      interpretedValue = "string"
                    ),
                    values = list(
                      list()
                    )
                  )
                )
              ),
              sessionAttributes = list(
                "string"
              )
            ),
            failureConditional = list(
              active = TRUE|FALSE,
              conditionalBranches = list(
                list(
                  name = "string",
                  condition = list(
                    expressionString = "string"
                  ),
                  nextStep = list(
                    dialogAction = list(
                      type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
                      slotToElicit = "string",
                      suppressNextMessage = TRUE|FALSE
                    ),
                    intent = list(
                      name = "string",
                      slots = list(
                        list(
                          shape = "Scalar"|"List",
                          value = list(
                            interpretedValue = "string"
                          ),
                          values = list(
                            list()
                          )
                        )
                      )
                    ),
                    sessionAttributes = list(
                      "string"
                    )
                  ),
                  response = list(
                    messageGroups = list(
                      list(
                        message = list(
                          plainTextMessage = list(
                            value = "string"
                          ),
                          customPayload = list(
                            value = "string"
                          ),
                          ssmlMessage = list(
                            value = "string"
                          ),
                          imageResponseCard = list(
                            title = "string",
                            subtitle = "string",
                            imageUrl = "string",
                            buttons = list(
                              list(
                                text = "string",
                                value = "string"
                              )
                            )
                          )
                        ),
                        variations = list(
                          list(
                            plainTextMessage = list(
                              value = "string"
                            ),
                            customPayload = list(
                              value = "string"
                            ),
                            ssmlMessage = list(
                              value = "string"
                            ),
                            imageResponseCard = list(
                              title = "string",
                              subtitle = "string",
                              imageUrl = "string",
                              buttons = list(
                                list(
                                  text = "string",
                                  value = "string"
                                )
                              )
                            )
                          )
                        )
                      )
                    ),
                    allowInterrupt = TRUE|FALSE
                  )
                )
              ),
              defaultBranch = list(
                nextStep = list(
                  dialogAction = list(
                    type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
                    slotToElicit = "string",
                    suppressNextMessage = TRUE|FALSE
                  ),
                  intent = list(
                    name = "string",
                    slots = list(
                      list(
                        shape = "Scalar"|"List",
                        value = list(
                          interpretedValue = "string"
                        ),
                        values = list(
                          list()
                        )
                      )
                    )
                  ),
                  sessionAttributes = list(
                    "string"
                  )
                ),
                response = list(
                  messageGroups = list(
                    list(
                      message = list(
                        plainTextMessage = list(
                          value = "string"
                        ),
                        customPayload = list(
                          value = "string"
                        ),
                        ssmlMessage = list(
                          value = "string"
                        ),
                        imageResponseCard = list(
                          title = "string",
                          subtitle = "string",
                          imageUrl = "string",
                          buttons = list(
                            list(
                              text = "string",
                              value = "string"
                            )
                          )
                        )
                      ),
                      variations = list(
                        list(
                          plainTextMessage = list(
                            value = "string"
                          ),
                          customPayload = list(
                            value = "string"
                          ),
                          ssmlMessage = list(
                            value = "string"
                          ),
                          imageResponseCard = list(
                            title = "string",
                            subtitle = "string",
                            imageUrl = "string",
                            buttons = list(
                              list(
                                text = "string",
                                value = "string"
                              )
                            )
                          )
                        )
                      )
                    )
                  ),
                  allowInterrupt = TRUE|FALSE
                )
              )
            ),
            timeoutResponse = list(
              messageGroups = list(
                list(
                  message = list(
                    plainTextMessage = list(
                      value = "string"
                    ),
                    customPayload = list(
                      value = "string"
                    ),
                    ssmlMessage = list(
                      value = "string"
                    ),
                    imageResponseCard = list(
                      title = "string",
                      subtitle = "string",
                      imageUrl = "string",
                      buttons = list(
                        list(
                          text = "string",
                          value = "string"
                        )
                      )
                    )
                  ),
                  variations = list(
                    list(
                      plainTextMessage = list(
                        value = "string"
                      ),
                      customPayload = list(
                        value = "string"
                      ),
                      ssmlMessage = list(
                        value = "string"
                      ),
                      imageResponseCard = list(
                        title = "string",
                        subtitle = "string",
                        imageUrl = "string",
                        buttons = list(
                          list(
                            text = "string",
                            value = "string"
                          )
                        )
                      )
                    )
                  )
                )
              ),
              allowInterrupt = TRUE|FALSE
            ),
            timeoutNextStep = list(
              dialogAction = list(
                type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
                slotToElicit = "string",
                suppressNextMessage = TRUE|FALSE
              ),
              intent = list(
                name = "string",
                slots = list(
                  list(
                    shape = "Scalar"|"List",
                    value = list(
                      interpretedValue = "string"
                    ),
                    values = list(
                      list()
                    )
                  )
                )
              ),
              sessionAttributes = list(
                "string"
              )
            ),
            timeoutConditional = list(
              active = TRUE|FALSE,
              conditionalBranches = list(
                list(
                  name = "string",
                  condition = list(
                    expressionString = "string"
                  ),
                  nextStep = list(
                    dialogAction = list(
                      type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
                      slotToElicit = "string",
                      suppressNextMessage = TRUE|FALSE
                    ),
                    intent = list(
                      name = "string",
                      slots = list(
                        list(
                          shape = "Scalar"|"List",
                          value = list(
                            interpretedValue = "string"
                          ),
                          values = list(
                            list()
                          )
                        )
                      )
                    ),
                    sessionAttributes = list(
                      "string"
                    )
                  ),
                  response = list(
                    messageGroups = list(
                      list(
                        message = list(
                          plainTextMessage = list(
                            value = "string"
                          ),
                          customPayload = list(
                            value = "string"
                          ),
                          ssmlMessage = list(
                            value = "string"
                          ),
                          imageResponseCard = list(
                            title = "string",
                            subtitle = "string",
                            imageUrl = "string",
                            buttons = list(
                              list(
                                text = "string",
                                value = "string"
                              )
                            )
                          )
                        ),
                        variations = list(
                          list(
                            plainTextMessage = list(
                              value = "string"
                            ),
                            customPayload = list(
                              value = "string"
                            ),
                            ssmlMessage = list(
                              value = "string"
                            ),
                            imageResponseCard = list(
                              title = "string",
                              subtitle = "string",
                              imageUrl = "string",
                              buttons = list(
                                list(
                                  text = "string",
                                  value = "string"
                                )
                              )
                            )
                          )
                        )
                      )
                    ),
                    allowInterrupt = TRUE|FALSE
                  )
                )
              ),
              defaultBranch = list(
                nextStep = list(
                  dialogAction = list(
                    type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
                    slotToElicit = "string",
                    suppressNextMessage = TRUE|FALSE
                  ),
                  intent = list(
                    name = "string",
                    slots = list(
                      list(
                        shape = "Scalar"|"List",
                        value = list(
                          interpretedValue = "string"
                        ),
                        values = list(
                          list()
                        )
                      )
                    )
                  ),
                  sessionAttributes = list(
                    "string"
                  )
                ),
                response = list(
                  messageGroups = list(
                    list(
                      message = list(
                        plainTextMessage = list(
                          value = "string"
                        ),
                        customPayload = list(
                          value = "string"
                        ),
                        ssmlMessage = list(
                          value = "string"
                        ),
                        imageResponseCard = list(
                          title = "string",
                          subtitle = "string",
                          imageUrl = "string",
                          buttons = list(
                            list(
                              text = "string",
                              value = "string"
                            )
                          )
                        )
                      ),
                      variations = list(
                        list(
                          plainTextMessage = list(
                            value = "string"
                          ),
                          customPayload = list(
                            value = "string"
                          ),
                          ssmlMessage = list(
                            value = "string"
                          ),
                          imageResponseCard = list(
                            title = "string",
                            subtitle = "string",
                            imageUrl = "string",
                            buttons = list(
                              list(
                                text = "string",
                                value = "string"
                              )
                            )
                          )
                        )
                      )
                    )
                  ),
                  allowInterrupt = TRUE|FALSE
                )
              )
            )
          )
        ),
        elicitationCodeHook = list(
          enableCodeHookInvocation = TRUE|FALSE,
          invocationLabel = "string"
        )
      ),
      intentClosingSetting = list(
        closingResponse = list(
          messageGroups = list(
            list(
              message = list(
                plainTextMessage = list(
                  value = "string"
                ),
                customPayload = list(
                  value = "string"
                ),
                ssmlMessage = list(
                  value = "string"
                ),
                imageResponseCard = list(
                  title = "string",
                  subtitle = "string",
                  imageUrl = "string",
                  buttons = list(
                    list(
                      text = "string",
                      value = "string"
                    )
                  )
                )
              ),
              variations = list(
                list(
                  plainTextMessage = list(
                    value = "string"
                  ),
                  customPayload = list(
                    value = "string"
                  ),
                  ssmlMessage = list(
                    value = "string"
                  ),
                  imageResponseCard = list(
                    title = "string",
                    subtitle = "string",
                    imageUrl = "string",
                    buttons = list(
                      list(
                        text = "string",
                        value = "string"
                      )
                    )
                  )
                )
              )
            )
          ),
          allowInterrupt = TRUE|FALSE
        ),
        active = TRUE|FALSE,
        nextStep = list(
          dialogAction = list(
            type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
            slotToElicit = "string",
            suppressNextMessage = TRUE|FALSE
          ),
          intent = list(
            name = "string",
            slots = list(
              list(
                shape = "Scalar"|"List",
                value = list(
                  interpretedValue = "string"
                ),
                values = list(
                  list()
                )
              )
            )
          ),
          sessionAttributes = list(
            "string"
          )
        ),
        conditional = list(
          active = TRUE|FALSE,
          conditionalBranches = list(
            list(
              name = "string",
              condition = list(
                expressionString = "string"
              ),
              nextStep = list(
                dialogAction = list(
                  type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
                  slotToElicit = "string",
                  suppressNextMessage = TRUE|FALSE
                ),
                intent = list(
                  name = "string",
                  slots = list(
                    list(
                      shape = "Scalar"|"List",
                      value = list(
                        interpretedValue = "string"
                      ),
                      values = list(
                        list()
                      )
                    )
                  )
                ),
                sessionAttributes = list(
                  "string"
                )
              ),
              response = list(
                messageGroups = list(
                  list(
                    message = list(
                      plainTextMessage = list(
                        value = "string"
                      ),
                      customPayload = list(
                        value = "string"
                      ),
                      ssmlMessage = list(
                        value = "string"
                      ),
                      imageResponseCard = list(
                        title = "string",
                        subtitle = "string",
                        imageUrl = "string",
                        buttons = list(
                          list(
                            text = "string",
                            value = "string"
                          )
                        )
                      )
                    ),
                    variations = list(
                      list(
                        plainTextMessage = list(
                          value = "string"
                        ),
                        customPayload = list(
                          value = "string"
                        ),
                        ssmlMessage = list(
                          value = "string"
                        ),
                        imageResponseCard = list(
                          title = "string",
                          subtitle = "string",
                          imageUrl = "string",
                          buttons = list(
                            list(
                              text = "string",
                              value = "string"
                            )
                          )
                        )
                      )
                    )
                  )
                ),
                allowInterrupt = TRUE|FALSE
              )
            )
          ),
          defaultBranch = list(
            nextStep = list(
              dialogAction = list(
                type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
                slotToElicit = "string",
                suppressNextMessage = TRUE|FALSE
              ),
              intent = list(
                name = "string",
                slots = list(
                  list(
                    shape = "Scalar"|"List",
                    value = list(
                      interpretedValue = "string"
                    ),
                    values = list(
                      list()
                    )
                  )
                )
              ),
              sessionAttributes = list(
                "string"
              )
            ),
            response = list(
              messageGroups = list(
                list(
                  message = list(
                    plainTextMessage = list(
                      value = "string"
                    ),
                    customPayload = list(
                      value = "string"
                    ),
                    ssmlMessage = list(
                      value = "string"
                    ),
                    imageResponseCard = list(
                      title = "string",
                      subtitle = "string",
                      imageUrl = "string",
                      buttons = list(
                        list(
                          text = "string",
                          value = "string"
                        )
                      )
                    )
                  ),
                  variations = list(
                    list(
                      plainTextMessage = list(
                        value = "string"
                      ),
                      customPayload = list(
                        value = "string"
                      ),
                      ssmlMessage = list(
                        value = "string"
                      ),
                      imageResponseCard = list(
                        title = "string",
                        subtitle = "string",
                        imageUrl = "string",
                        buttons = list(
                          list(
                            text = "string",
                            value = "string"
                          )
                        )
                      )
                    )
                  )
                )
              ),
              allowInterrupt = TRUE|FALSE
            )
          )
        )
      ),
      inputContexts = list(
        list(
          name = "string"
        )
      ),
      outputContexts = list(
        list(
          name = "string",
          timeToLiveInSeconds = 123,
          turnsToLive = 123
        )
      ),
      kendraConfiguration = list(
        kendraIndex = "string",
        queryFilterStringEnabled = TRUE|FALSE,
        queryFilterString = "string"
      ),
      botId = "string",
      botVersion = "string",
      localeId = "string",
      initialResponseSetting = list(
        initialResponse = list(
          messageGroups = list(
            list(
              message = list(
                plainTextMessage = list(
                  value = "string"
                ),
                customPayload = list(
                  value = "string"
                ),
                ssmlMessage = list(
                  value = "string"
                ),
                imageResponseCard = list(
                  title = "string",
                  subtitle = "string",
                  imageUrl = "string",
                  buttons = list(
                    list(
                      text = "string",
                      value = "string"
                    )
                  )
                )
              ),
              variations = list(
                list(
                  plainTextMessage = list(
                    value = "string"
                  ),
                  customPayload = list(
                    value = "string"
                  ),
                  ssmlMessage = list(
                    value = "string"
                  ),
                  imageResponseCard = list(
                    title = "string",
                    subtitle = "string",
                    imageUrl = "string",
                    buttons = list(
                      list(
                        text = "string",
                        value = "string"
                      )
                    )
                  )
                )
              )
            )
          ),
          allowInterrupt = TRUE|FALSE
        ),
        nextStep = list(
          dialogAction = list(
            type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
            slotToElicit = "string",
            suppressNextMessage = TRUE|FALSE
          ),
          intent = list(
            name = "string",
            slots = list(
              list(
                shape = "Scalar"|"List",
                value = list(
                  interpretedValue = "string"
                ),
                values = list(
                  list()
                )
              )
            )
          ),
          sessionAttributes = list(
            "string"
          )
        ),
        conditional = list(
          active = TRUE|FALSE,
          conditionalBranches = list(
            list(
              name = "string",
              condition = list(
                expressionString = "string"
              ),
              nextStep = list(
                dialogAction = list(
                  type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
                  slotToElicit = "string",
                  suppressNextMessage = TRUE|FALSE
                ),
                intent = list(
                  name = "string",
                  slots = list(
                    list(
                      shape = "Scalar"|"List",
                      value = list(
                        interpretedValue = "string"
                      ),
                      values = list(
                        list()
                      )
                    )
                  )
                ),
                sessionAttributes = list(
                  "string"
                )
              ),
              response = list(
                messageGroups = list(
                  list(
                    message = list(
                      plainTextMessage = list(
                        value = "string"
                      ),
                      customPayload = list(
                        value = "string"
                      ),
                      ssmlMessage = list(
                        value = "string"
                      ),
                      imageResponseCard = list(
                        title = "string",
                        subtitle = "string",
                        imageUrl = "string",
                        buttons = list(
                          list(
                            text = "string",
                            value = "string"
                          )
                        )
                      )
                    ),
                    variations = list(
                      list(
                        plainTextMessage = list(
                          value = "string"
                        ),
                        customPayload = list(
                          value = "string"
                        ),
                        ssmlMessage = list(
                          value = "string"
                        ),
                        imageResponseCard = list(
                          title = "string",
                          subtitle = "string",
                          imageUrl = "string",
                          buttons = list(
                            list(
                              text = "string",
                              value = "string"
                            )
                          )
                        )
                      )
                    )
                  )
                ),
                allowInterrupt = TRUE|FALSE
              )
            )
          ),
          defaultBranch = list(
            nextStep = list(
              dialogAction = list(
                type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
                slotToElicit = "string",
                suppressNextMessage = TRUE|FALSE
              ),
              intent = list(
                name = "string",
                slots = list(
                  list(
                    shape = "Scalar"|"List",
                    value = list(
                      interpretedValue = "string"
                    ),
                    values = list(
                      list()
                    )
                  )
                )
              ),
              sessionAttributes = list(
                "string"
              )
            ),
            response = list(
              messageGroups = list(
                list(
                  message = list(
                    plainTextMessage = list(
                      value = "string"
                    ),
                    customPayload = list(
                      value = "string"
                    ),
                    ssmlMessage = list(
                      value = "string"
                    ),
                    imageResponseCard = list(
                      title = "string",
                      subtitle = "string",
                      imageUrl = "string",
                      buttons = list(
                        list(
                          text = "string",
                          value = "string"
                        )
                      )
                    )
                  ),
                  variations = list(
                    list(
                      plainTextMessage = list(
                        value = "string"
                      ),
                      customPayload = list(
                        value = "string"
                      ),
                      ssmlMessage = list(
                        value = "string"
                      ),
                      imageResponseCard = list(
                        title = "string",
                        subtitle = "string",
                        imageUrl = "string",
                        buttons = list(
                          list(
                            text = "string",
                            value = "string"
                          )
                        )
                      )
                    )
                  )
                )
              ),
              allowInterrupt = TRUE|FALSE
            )
          )
        ),
        codeHook = list(
          enableCodeHookInvocation = TRUE|FALSE,
          active = TRUE|FALSE,
          invocationLabel = "string",
          postCodeHookSpecification = list(
            successResponse = list(
              messageGroups = list(
                list(
                  message = list(
                    plainTextMessage = list(
                      value = "string"
                    ),
                    customPayload = list(
                      value = "string"
                    ),
                    ssmlMessage = list(
                      value = "string"
                    ),
                    imageResponseCard = list(
                      title = "string",
                      subtitle = "string",
                      imageUrl = "string",
                      buttons = list(
                        list(
                          text = "string",
                          value = "string"
                        )
                      )
                    )
                  ),
                  variations = list(
                    list(
                      plainTextMessage = list(
                        value = "string"
                      ),
                      customPayload = list(
                        value = "string"
                      ),
                      ssmlMessage = list(
                        value = "string"
                      ),
                      imageResponseCard = list(
                        title = "string",
                        subtitle = "string",
                        imageUrl = "string",
                        buttons = list(
                          list(
                            text = "string",
                            value = "string"
                          )
                        )
                      )
                    )
                  )
                )
              ),
              allowInterrupt = TRUE|FALSE
            ),
            successNextStep = list(
              dialogAction = list(
                type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
                slotToElicit = "string",
                suppressNextMessage = TRUE|FALSE
              ),
              intent = list(
                name = "string",
                slots = list(
                  list(
                    shape = "Scalar"|"List",
                    value = list(
                      interpretedValue = "string"
                    ),
                    values = list(
                      list()
                    )
                  )
                )
              ),
              sessionAttributes = list(
                "string"
              )
            ),
            successConditional = list(
              active = TRUE|FALSE,
              conditionalBranches = list(
                list(
                  name = "string",
                  condition = list(
                    expressionString = "string"
                  ),
                  nextStep = list(
                    dialogAction = list(
                      type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
                      slotToElicit = "string",
                      suppressNextMessage = TRUE|FALSE
                    ),
                    intent = list(
                      name = "string",
                      slots = list(
                        list(
                          shape = "Scalar"|"List",
                          value = list(
                            interpretedValue = "string"
                          ),
                          values = list(
                            list()
                          )
                        )
                      )
                    ),
                    sessionAttributes = list(
                      "string"
                    )
                  ),
                  response = list(
                    messageGroups = list(
                      list(
                        message = list(
                          plainTextMessage = list(
                            value = "string"
                          ),
                          customPayload = list(
                            value = "string"
                          ),
                          ssmlMessage = list(
                            value = "string"
                          ),
                          imageResponseCard = list(
                            title = "string",
                            subtitle = "string",
                            imageUrl = "string",
                            buttons = list(
                              list(
                                text = "string",
                                value = "string"
                              )
                            )
                          )
                        ),
                        variations = list(
                          list(
                            plainTextMessage = list(
                              value = "string"
                            ),
                            customPayload = list(
                              value = "string"
                            ),
                            ssmlMessage = list(
                              value = "string"
                            ),
                            imageResponseCard = list(
                              title = "string",
                              subtitle = "string",
                              imageUrl = "string",
                              buttons = list(
                                list(
                                  text = "string",
                                  value = "string"
                                )
                              )
                            )
                          )
                        )
                      )
                    ),
                    allowInterrupt = TRUE|FALSE
                  )
                )
              ),
              defaultBranch = list(
                nextStep = list(
                  dialogAction = list(
                    type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
                    slotToElicit = "string",
                    suppressNextMessage = TRUE|FALSE
                  ),
                  intent = list(
                    name = "string",
                    slots = list(
                      list(
                        shape = "Scalar"|"List",
                        value = list(
                          interpretedValue = "string"
                        ),
                        values = list(
                          list()
                        )
                      )
                    )
                  ),
                  sessionAttributes = list(
                    "string"
                  )
                ),
                response = list(
                  messageGroups = list(
                    list(
                      message = list(
                        plainTextMessage = list(
                          value = "string"
                        ),
                        customPayload = list(
                          value = "string"
                        ),
                        ssmlMessage = list(
                          value = "string"
                        ),
                        imageResponseCard = list(
                          title = "string",
                          subtitle = "string",
                          imageUrl = "string",
                          buttons = list(
                            list(
                              text = "string",
                              value = "string"
                            )
                          )
                        )
                      ),
                      variations = list(
                        list(
                          plainTextMessage = list(
                            value = "string"
                          ),
                          customPayload = list(
                            value = "string"
                          ),
                          ssmlMessage = list(
                            value = "string"
                          ),
                          imageResponseCard = list(
                            title = "string",
                            subtitle = "string",
                            imageUrl = "string",
                            buttons = list(
                              list(
                                text = "string",
                                value = "string"
                              )
                            )
                          )
                        )
                      )
                    )
                  ),
                  allowInterrupt = TRUE|FALSE
                )
              )
            ),
            failureResponse = list(
              messageGroups = list(
                list(
                  message = list(
                    plainTextMessage = list(
                      value = "string"
                    ),
                    customPayload = list(
                      value = "string"
                    ),
                    ssmlMessage = list(
                      value = "string"
                    ),
                    imageResponseCard = list(
                      title = "string",
                      subtitle = "string",
                      imageUrl = "string",
                      buttons = list(
                        list(
                          text = "string",
                          value = "string"
                        )
                      )
                    )
                  ),
                  variations = list(
                    list(
                      plainTextMessage = list(
                        value = "string"
                      ),
                      customPayload = list(
                        value = "string"
                      ),
                      ssmlMessage = list(
                        value = "string"
                      ),
                      imageResponseCard = list(
                        title = "string",
                        subtitle = "string",
                        imageUrl = "string",
                        buttons = list(
                          list(
                            text = "string",
                            value = "string"
                          )
                        )
                      )
                    )
                  )
                )
              ),
              allowInterrupt = TRUE|FALSE
            ),
            failureNextStep = list(
              dialogAction = list(
                type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
                slotToElicit = "string",
                suppressNextMessage = TRUE|FALSE
              ),
              intent = list(
                name = "string",
                slots = list(
                  list(
                    shape = "Scalar"|"List",
                    value = list(
                      interpretedValue = "string"
                    ),
                    values = list(
                      list()
                    )
                  )
                )
              ),
              sessionAttributes = list(
                "string"
              )
            ),
            failureConditional = list(
              active = TRUE|FALSE,
              conditionalBranches = list(
                list(
                  name = "string",
                  condition = list(
                    expressionString = "string"
                  ),
                  nextStep = list(
                    dialogAction = list(
                      type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
                      slotToElicit = "string",
                      suppressNextMessage = TRUE|FALSE
                    ),
                    intent = list(
                      name = "string",
                      slots = list(
                        list(
                          shape = "Scalar"|"List",
                          value = list(
                            interpretedValue = "string"
                          ),
                          values = list(
                            list()
                          )
                        )
                      )
                    ),
                    sessionAttributes = list(
                      "string"
                    )
                  ),
                  response = list(
                    messageGroups = list(
                      list(
                        message = list(
                          plainTextMessage = list(
                            value = "string"
                          ),
                          customPayload = list(
                            value = "string"
                          ),
                          ssmlMessage = list(
                            value = "string"
                          ),
                          imageResponseCard = list(
                            title = "string",
                            subtitle = "string",
                            imageUrl = "string",
                            buttons = list(
                              list(
                                text = "string",
                                value = "string"
                              )
                            )
                          )
                        ),
                        variations = list(
                          list(
                            plainTextMessage = list(
                              value = "string"
                            ),
                            customPayload = list(
                              value = "string"
                            ),
                            ssmlMessage = list(
                              value = "string"
                            ),
                            imageResponseCard = list(
                              title = "string",
                              subtitle = "string",
                              imageUrl = "string",
                              buttons = list(
                                list(
                                  text = "string",
                                  value = "string"
                                )
                              )
                            )
                          )
                        )
                      )
                    ),
                    allowInterrupt = TRUE|FALSE
                  )
                )
              ),
              defaultBranch = list(
                nextStep = list(
                  dialogAction = list(
                    type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
                    slotToElicit = "string",
                    suppressNextMessage = TRUE|FALSE
                  ),
                  intent = list(
                    name = "string",
                    slots = list(
                      list(
                        shape = "Scalar"|"List",
                        value = list(
                          interpretedValue = "string"
                        ),
                        values = list(
                          list()
                        )
                      )
                    )
                  ),
                  sessionAttributes = list(
                    "string"
                  )
                ),
                response = list(
                  messageGroups = list(
                    list(
                      message = list(
                        plainTextMessage = list(
                          value = "string"
                        ),
                        customPayload = list(
                          value = "string"
                        ),
                        ssmlMessage = list(
                          value = "string"
                        ),
                        imageResponseCard = list(
                          title = "string",
                          subtitle = "string",
                          imageUrl = "string",
                          buttons = list(
                            list(
                              text = "string",
                              value = "string"
                            )
                          )
                        )
                      ),
                      variations = list(
                        list(
                          plainTextMessage = list(
                            value = "string"
                          ),
                          customPayload = list(
                            value = "string"
                          ),
                          ssmlMessage = list(
                            value = "string"
                          ),
                          imageResponseCard = list(
                            title = "string",
                            subtitle = "string",
                            imageUrl = "string",
                            buttons = list(
                              list(
                                text = "string",
                                value = "string"
                              )
                            )
                          )
                        )
                      )
                    )
                  ),
                  allowInterrupt = TRUE|FALSE
                )
              )
            ),
            timeoutResponse = list(
              messageGroups = list(
                list(
                  message = list(
                    plainTextMessage = list(
                      value = "string"
                    ),
                    customPayload = list(
                      value = "string"
                    ),
                    ssmlMessage = list(
                      value = "string"
                    ),
                    imageResponseCard = list(
                      title = "string",
                      subtitle = "string",
                      imageUrl = "string",
                      buttons = list(
                        list(
                          text = "string",
                          value = "string"
                        )
                      )
                    )
                  ),
                  variations = list(
                    list(
                      plainTextMessage = list(
                        value = "string"
                      ),
                      customPayload = list(
                        value = "string"
                      ),
                      ssmlMessage = list(
                        value = "string"
                      ),
                      imageResponseCard = list(
                        title = "string",
                        subtitle = "string",
                        imageUrl = "string",
                        buttons = list(
                          list(
                            text = "string",
                            value = "string"
                          )
                        )
                      )
                    )
                  )
                )
              ),
              allowInterrupt = TRUE|FALSE
            ),
            timeoutNextStep = list(
              dialogAction = list(
                type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
                slotToElicit = "string",
                suppressNextMessage = TRUE|FALSE
              ),
              intent = list(
                name = "string",
                slots = list(
                  list(
                    shape = "Scalar"|"List",
                    value = list(
                      interpretedValue = "string"
                    ),
                    values = list(
                      list()
                    )
                  )
                )
              ),
              sessionAttributes = list(
                "string"
              )
            ),
            timeoutConditional = list(
              active = TRUE|FALSE,
              conditionalBranches = list(
                list(
                  name = "string",
                  condition = list(
                    expressionString = "string"
                  ),
                  nextStep = list(
                    dialogAction = list(
                      type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
                      slotToElicit = "string",
                      suppressNextMessage = TRUE|FALSE
                    ),
                    intent = list(
                      name = "string",
                      slots = list(
                        list(
                          shape = "Scalar"|"List",
                          value = list(
                            interpretedValue = "string"
                          ),
                          values = list(
                            list()
                          )
                        )
                      )
                    ),
                    sessionAttributes = list(
                      "string"
                    )
                  ),
                  response = list(
                    messageGroups = list(
                      list(
                        message = list(
                          plainTextMessage = list(
                            value = "string"
                          ),
                          customPayload = list(
                            value = "string"
                          ),
                          ssmlMessage = list(
                            value = "string"
                          ),
                          imageResponseCard = list(
                            title = "string",
                            subtitle = "string",
                            imageUrl = "string",
                            buttons = list(
                              list(
                                text = "string",
                                value = "string"
                              )
                            )
                          )
                        ),
                        variations = list(
                          list(
                            plainTextMessage = list(
                              value = "string"
                            ),
                            customPayload = list(
                              value = "string"
                            ),
                            ssmlMessage = list(
                              value = "string"
                            ),
                            imageResponseCard = list(
                              title = "string",
                              subtitle = "string",
                              imageUrl = "string",
                              buttons = list(
                                list(
                                  text = "string",
                                  value = "string"
                                )
                              )
                            )
                          )
                        )
                      )
                    ),
                    allowInterrupt = TRUE|FALSE
                  )
                )
              ),
              defaultBranch = list(
                nextStep = list(
                  dialogAction = list(
                    type = "ElicitIntent"|"StartIntent"|"ElicitSlot"|"EvaluateConditional"|"InvokeDialogCodeHook"|"ConfirmIntent"|"FulfillIntent"|"CloseIntent"|"EndConversation",
                    slotToElicit = "string",
                    suppressNextMessage = TRUE|FALSE
                  ),
                  intent = list(
                    name = "string",
                    slots = list(
                      list(
                        shape = "Scalar"|"List",
                        value = list(
                          interpretedValue = "string"
                        ),
                        values = list(
                          list()
                        )
                      )
                    )
                  ),
                  sessionAttributes = list(
                    "string"
                  )
                ),
                response = list(
                  messageGroups = list(
                    list(
                      message = list(
                        plainTextMessage = list(
                          value = "string"
                        ),
                        customPayload = list(
                          value = "string"
                        ),
                        ssmlMessage = list(
                          value = "string"
                        ),
                        imageResponseCard = list(
                          title = "string",
                          subtitle = "string",
                          imageUrl = "string",
                          buttons = list(
                            list(
                              text = "string",
                              value = "string"
                            )
                          )
                        )
                      ),
                      variations = list(
                        list(
                          plainTextMessage = list(
                            value = "string"
                          ),
                          customPayload = list(
                            value = "string"
                          ),
                          ssmlMessage = list(
                            value = "string"
                          ),
                          imageResponseCard = list(
                            title = "string",
                            subtitle = "string",
                            imageUrl = "string",
                            buttons = list(
                              list(
                                text = "string",
                                value = "string"
                              )
                            )
                          )
                        )
                      )
                    )
                  ),
                  allowInterrupt = TRUE|FALSE
                )
              )
            )
          )
        )
      )
    )
