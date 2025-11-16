---
title: "Test Note: All Obsidian and Quarto Features"
author: "Test Author"
date: 2025-11-16
categories: [test, graphics, vision]
publish: true
---

## Introduction

This note tests all major features. Here's a citation to a paper [@mildenhall2020nerf].

### Wiki Links

See also: [An Introduction to Convolutional Neural Networks](OShea-IntroductionConvolutionalNeural-2015.html) for more on neural networks.

### Callouts

> [!note] Standard Note
> This is a regular callout that should become a Quarto callout.

> [!margin] Margin Note
> This becomes a sidenote in Tufte style.

> [!margin] Margin Ref.
> Here's a citation to a paper in the side [@mildenhall2020nerf].

### Images

Here's a centered image:

![Figure caption](../attachments/test-image.png)

::: {.column-margin}
![Side image](../attachments/margin-image.png)
Margin images appear to the side
:::

### Math

Inline math: $E = mc^2$

Display math:
$$
\int_{-\infty}^{\infty} e^{-x^2} dx = \sqrt{\pi}
$$

### Headers and Structure

#### Subsection
Regular markdown headers work fine.

### Code
```python
def hello():
    print("Code blocks work")
```

## References

::: {#refs}
:::
