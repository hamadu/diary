const showdown = require('showdown/dist/showdown.min');

export default class Editor {
  constructor() {
    this.converter = new showdown.Converter();
  }

  preview() {
    const markdown = document.getElementById('article_body').value;
    const html = this.convert(markdown);
    document.getElementById('preview').innerHTML = html;
  }

  convert(text) {
    return this.converter.makeHtml(text);
  }
}
