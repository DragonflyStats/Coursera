### Answer Key

1. **B** — A model trained to map descriptive text and visual content into a shared space for comparison
2. **C** — Add specific, descriptive details about the subject, setting, and lighting.
3. **A** — Prompt B provides specific details about the subject, setting, and desired style.
4. **C** — Including terms like "– – no harsh lighting, — – no crowds, – – no conflict" to guide the mood
5. **C** — Outpainting
6. **C** — "Abstract visualization of a data network, flowing lines of light, futuristic, clean, professional, color palette of blue, silver, and white"
7. **C** — Isolate and reuse the stylistic keywords in each prompt, along with a fixed seed number.
8. **B** — Incorporate terms that define a unique visual aesthetic, such as 'brutalist architecture' or 'bioluminescent'.
9. **C** — The model may produce lettering that is misshapen, misspelled, or illegible.
10. **A** — Use a detailed prompt with stylistic keywords, apply negative prompts to exclude unwanted items, then use inpainting to refine specific details.

---

### Questions and Solutions

#### Question 1

* **A.** A classification model that applies a fixed set of labels to each image for keyword-based searching
* **B.** A model trained to map descriptive text and visual content into a shared space for comparison
* **C.** A generative model that creates a new image from the text to use as a visual search query
* **D.** An object detection model that catalogs the items in each image for a component-based search

**Correct Answer:** **B. A model trained to map descriptive text and visual content into a shared space for comparison**

**Explanation:** Multimodal embedding models (such as CLIP) project both text prompts and visual images into a unified, shared vector space. This joint embedding space allows an image search engine to compute cosine similarity directly between text embeddings and pre-indexed image embeddings to retrieve relevant visual results.

---

#### Question 2

* **A.** Focus on using a negative prompt to explicitly exclude unwanted vehicle types.
* **B.** Increase the model's guidance scale to force a stricter interpretation of the prompt.
* **C.** Add specific, descriptive details about the subject, setting, and lighting.
* **D.** Introduce stylistic keywords like "photorealistic" to define the artistic tone.

**Correct Answer:** **C. Add specific, descriptive details about the subject, setting, and lighting.**

**Explanation:** Generative models default to general, average representations when given vague inputs like "a car." Adding concrete descriptive details ("vintage red sports car," "coastal road," "sunset") gives the model explicit guidance regarding the subject, backdrop, color palette, and atmosphere.

---

#### Question 3

* **A.** Prompt B provides specific details about the subject, setting, and desired style.
* **B.** Prompt A is often more effective because it gives the model creative freedom to produce a unique image.
* **C.** Prompt B uses more technical terms that the model's algorithm is designed to prioritize.
* **D.** Prompt B offers a narrative structure that helps the model compose a more coherent scene.

**Correct Answer:** **A. Prompt B provides specific details about the subject, setting, and desired style.**

**Explanation:** Prompt B explicitly defines the subject ("rustic log cabin"), the surrounding setting ("pine forest during winter, smoke coming from the chimney"), and the aesthetic rendering style ("cozy," "hyperrealistic"). Giving explicit context minimizes ambiguity during generation.

---

#### Question 4

* **A.** Increasing the emphasis on positive keywords like 'serene' and 'peaceful' in the main prompt
* **B.** Lowering the guidance scale to give the model more creative freedom to find a calm result
* **C.** Including terms like "– – no harsh lighting, — – no crowds, – – no conflict" to guide the mood
* **D.** Describing unwanted elements using negation within the main prompt, such as "a scene that does not have conflict"

**Correct Answer:** **C. Including terms like "– – no harsh lighting, — – no crowds, – – no conflict" to guide the mood**

**Explanation:** Text-to-image diffusion models process token embeddings directly; writing "does not have conflict" in the positive prompt can cause the model to pay attention to the word "conflict." Using dedicated negative prompt parameters (such as `--no` parameters) explicitly strips those unwanted features out during the iterative denoising process.

---

#### Question 5

* **A.** Negative prompting
* **B.** Inpainting
* **C.** Outpainting
* **D.** Increasing the guidance scale

**Correct Answer:** **C. Outpainting**

**Explanation:** Outpainting is the generative technique used to extend an image canvas beyond its original borders, synthesizing contextually coherent background content while preserving the original visual elements inside the frame.

---

#### Question 6

* **A.** "Futuristic corporate banner, clean and professional design, using an abstract pattern of blue, silver, and white shapes"
* **B.** "Technical illustration of a computer network, data packets moving through fiber optic cables, binary code overlay"
* **C.** "Abstract visualization of a data network, flowing lines of light, futuristic, clean, professional, color palette of blue, silver, and white"
* **D.** "Abstract blue, silver, and white light trails on a dark background, creating a sense of digital motion and professionalism"

**Correct Answer:** **C. "Abstract visualization of a data network, flowing lines of light, futuristic, clean, professional, color palette of blue, silver, and white"**

**Explanation:** Option C incorporates all key constraints from the brief: the abstract representation of flowing network data ("flowing lines of light"), the required color scheme ("blue, silver, and white"), and the desired aesthetic tone ("futuristic, clean, professional").

---

#### Question 7

* **A.** Use the initial successful image as a style guide for all subsequent image-to-image generations.
* **B.** Write five separate prompts but apply identical guidance scale and sampling step settings to all.
* **C.** Isolate and reuse the stylistic keywords in each prompt, along with a fixed seed number.
* **D.** Generate the first image and then use the outpainting feature to create the four other scenes.

**Correct Answer:** **C. Isolate and reuse the stylistic keywords in each prompt, along with a fixed seed number.**

**Explanation:** Reusing consistent stylistic modifiers (e.g., "retro comic book art") along with fixing the random generation seed (or seed range) ensures that latent noise initialization and visual rendering styles remain cohesive across different prompt compositions.

---

#### Question 8

* **A.** Use a negative prompt to exclude common visual elements like 'flying cars' or 'neon signs'.
* **B.** Incorporate terms that define a unique visual aesthetic, such as 'brutalist architecture' or 'bioluminescent'.
* **C.** Detail the city's abstract cultural influences and non-visual technological advancements for context.
* **D.** Adjust the guidance scale downward to allow for more imaginative and varied artistic interpretations.

**Correct Answer:** **B. Incorporate terms that define a unique visual aesthetic, such as 'brutalist architecture' or 'bioluminescent'.**

**Explanation:** Generic outputs occur when prompt terms are broad. Replacing general tropes with distinct aesthetic descriptors (e.g., specific architectural movements like "brutalist" or lighting styles like "bioluminescent") steers the model away from generic sci-fi stock images toward a distinct aesthetic style.

---

#### Question 9

* **A.** The model may render each word in a completely different and inconsistent font style.
* **B.** The model might create the text and bakery items as separate, disconnected elements.
* **C.** The model may produce lettering that is misshapen, misspelled, or illegible.
* **D.** The model will focus on the sign's texture and style, ignoring the specific words.

**Correct Answer:** **C. The model may produce lettering that is misshapen, misspelled, or illegible.**

**Explanation:** Standard diffusion models historically struggle with precise text rendering because they operate on sub-word token embeddings and spatial latent representations rather than discrete glyph vector fonts, frequently causing distorted, garbled, or misspelled letters.

---

#### Question 10

* **A.** Use a detailed prompt with stylistic keywords, apply negative prompts to exclude unwanted items, then use inpainting to refine specific details.
* **B.** Generate multiple variations from a detailed prompt, then manually combine the best elements in a separate photo editing program.
* **C.** Use a simple prompt to establish a basic layout, then iteratively use outpainting to expand the canvas and add layers of detail.
* **D.** Find a reference photograph of a marketplace and use an image-to-image process to transform it into the futuristic scene.

**Correct Answer:** **A. Use a detailed prompt with stylistic keywords, apply negative prompts to exclude unwanted items, then use inpainting to refine specific details.**

**Explanation:** A complete end-to-end generative AI workflow utilizes positive stylistic prompting to establish the scene, negative prompting to suppress undesirable artifacts, and targeted inpainting to modify, correct, or add localized details to achieve final production quality.
