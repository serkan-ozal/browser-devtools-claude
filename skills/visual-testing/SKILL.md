# Visual Testing Skill

Perform visual testing and UI verification using screenshots and DOM inspection.

## When to Use

This skill activates when:
- User wants to verify UI appearance
- User asks to compare page with design
- User needs responsive design testing
- User wants to check for visual regressions
- User mentions UI bugs or styling issues

## Capabilities

### Screenshot Capture
- Full page or element screenshots (`content_take-screenshot`) — `selector` or `ref` for element
- **Annotated screenshots** — `annotate: true` overlays numbered labels [1],[2],… mapping to ARIA refs (e1,e2). Use `annotateContent` for headings, `cursorInteractive` for div/span buttons
- PDF generation (`content_save-as-pdf`)

**Important**: Do not use screenshot to understand page structure. Call `a11y_take-aria-snapshot` first, then screenshot for visual verification.

### Responsive Testing
- Resize viewport (`interaction_resize-viewport`)
- Test mobile, tablet, desktop breakpoints
- Verify responsive behavior

### Design Comparison
- Compare with Figma designs (`figma_compare-page-with-design`)
- Visual similarity analysis
- Identify design deviations

### DOM Inspection
- Get HTML structure (`content_get-as-html`)
- Check CSS classes and styles
- Verify element presence and visibility

## Viewport Presets

| Device | Width | Height |
|--------|-------|--------|
| Mobile S | 320px | 568px |
| Mobile M | 375px | 667px |
| Mobile L | 425px | 812px |
| Tablet | 768px | 1024px |
| Laptop | 1366px | 768px |
| Desktop | 1920px | 1080px |

## Testing Workflow

1. **Navigate**: Go to page under test
2. **Wait**: Network idle, page fully loaded
3. **ARIA snapshot first**: Get refs (e1, e2, …) before screenshot
4. **Capture**: Take baseline or annotated screenshot
5. **Resize**: Test different viewports
6. **Interact**: Use refs (e1) for clicks; test hover, modals
7. **Compare**: Check against expected design
8. **Document**: Report visual issues

## Common Checks

- Element visibility at breakpoints
- Text overflow and truncation
- Image aspect ratios
- Color and typography consistency
- Spacing and alignment
- Interactive state styling
