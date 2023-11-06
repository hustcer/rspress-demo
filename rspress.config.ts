import * as path from 'path';
import { defineConfig } from 'rspress/config';

export default defineConfig({
  outDir: 'docs-dist',
  root: path.join(__dirname, 'docs'),
  globalStyles: path.join(__dirname, 'styles/index.css'),
  route: {
    cleanUrls: true,
  },
  markdown: {
    showLineNumbers: true,
    highlightLanguages: [
      'css',
      'diff',
      'java',
      'json',
      'jsx',
      'nginx',
      'toml',
      'ts',
      'tsx',
      'yaml',
      ['js', 'javascript'],
      // Alias as md, full name as markdown
      ['md', 'markdown'],
      ['sh', 'bash'],
      ['shell', 'bash'],
    ],
  },
  themeConfig: {
    hideNavbar: 'auto',
    lastUpdated: true,
    outlineTitle: 'Outline',
    enableContentAnimation: true,
    lastUpdatedText: '最后修改时间',
    socialLinks: [],
  },
});
