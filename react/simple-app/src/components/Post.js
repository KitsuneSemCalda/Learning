import React from 'react'
import Comment from './Comment';

export default class Post extends React.Component{
  constructor(props){
    super(props);

    this.state = {
      comments: [
        {text: 'Bom Post!'}
      ],
      newCommentText: ""
    };
    this.handleTextChange = this.handleTextChange.bind(this)
    this.handleSubmit = this.handleSubmit.bind(this)
  }

  handleTextChange(e){
    e.preventDefault();
    
    this.setState({newCommentText: e.target.value})
  }

  handleSubmit(e) {
    this.setState({
      comments: [
        ...this.state.comments,
        {text: this.state.newCommentText}
      ]
    })
    e.preventDefault();
  }


  render(){
    return (
      <div>
      <h2>{this.props.title}</h2>
      <form onSubmit={this.handleSubmit}>
          <input 
            value={this.state.newCommentText}
            onChange={this.handleTextChange}
          />
          <button type="submit"> Comment </button>
      </form>
      {this.state.comments.map((comment, index) =>{
          return <Comment key={index} text={comment.text} />
        })}
      </div>
    );
  }
}
